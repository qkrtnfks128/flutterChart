import 'package:bloc/bloc.dart';
import 'package:fietmobile/services/login/kakao_login_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'login_view_state.dart';

part 'login_view_cubit.freezed.dart';

class LoginViewCubit extends Cubit<LoginViewState> {
  LoginViewCubit() : super(LoginViewState.initial());

  void kakaoLogin() async {
    try {
      KakaoLoginApi kakaoLoginApi = KakaoLoginApi();
      await kakaoLoginApi.login();
    } catch (error) {
      emit(LoginViewState.error(error.toString()));
    }
  }

// void appleLogin() async {
//   try{
//
//   }
// }
}
