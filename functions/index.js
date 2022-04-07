'use strict'

const functions = require('firebase-functions');
const axios = require('axios').default;
const async = require('async');
var admin = require('firebase-admin');

const serviceAccount = require('./fiet-test-app-firebase-adminsdk-717af-392e38d21f.json');
admin.initializeApp({ credential: admin.credential.cert(serviceAccount) });

const kakaoRequestUrl = 'https://kapi.kakao.com/v2/user/me';

exports.getFirebaseToken = functions.https.onCall((data, context) => {
    if (!data || !data.access_token) {
        return {
            status: 401,
            msg: 'Invalid Token.',
        };
    }
    return createFirebaseToken(data.access_token);
});

// 카카오 인증 서버를 통해 액세스 토큰 유효성 검사 수행
async function requestVerificationToKakao(kakaoAccessToken) {
    console.log('Requesting verification to Kakao API server - Input Access Token: ' + kakaoAccessToken);
    var result = await axios.get(kakaoRequestUrl, {
        headers: {
            Authorization: 'Bearer ' + kakaoAccessToken,
        },
    });
    return result;
}

// 
async function getOrCreateFirebaseUser(email) {
    try {
        return await admin.auth().getUserByEmail(email);
    } catch (e) {
        if (e.code === 'auth/user-not-found') {
            console.log('Creating Firebase User - email: ' + email);
            try {
                return await admin.auth().createUser({
                    email: email,
                });
            }
            catch (createError) {
                console.error(`Error occurred while creating firebase user - email: ${email}`);
            }
        }
    }
    return null;
}

async function createFirebaseToken(kakaoAccessToken) {
    let kakaoVerificationResult = null;
    try {
        kakaoVerificationResult = await requestVerificationToKakao(kakaoAccessToken);
        if (!kakaoVerificationResult || kakaoVerificationResult.status != 200) {
            return {
                status: 401,
                msg: 'Invalid Token.',
            };
        }
    }
    catch (e) {
        console.error(e);
        const status = e.response.status;
        const code = e.response.data.code;
        if (status == 400) {
            if (code == -1) {
                return {
                    status: 500,
                    msg: 'Kakao server is temporarily not responding.',
                };
            }
        }
        return {
            status: 401,
            msg: 'Invalid Token.',
        };
    }

    // 카카오 인증 성공, 파이어베이스 토큰 발급

    const kakaoUserData = kakaoVerificationResult.data;
    console.log('Kakao User Data: ' + kakaoUserData);

    const firebaseUserData = await getOrCreateFirebaseUser(kakaoUserData.kakao_account.email);
    if (!firebaseUserData) {
        return {
            status: 500,
            msg: 'Getting or Creating Firebase User Failed',
        };
    }

    // 파이어베이스 토큰 생성
    // TODO Custom Token은 1시간만에 만료됨. 따라서, idToken을 발급받을 방법이 필요함.
    const firebaseToken = await admin.auth().createCustomToken(firebaseUserData.uid, { provider: 'KAKAO' });
    return {
        status: 200,
        'firebase_token': firebaseToken,
    };
}