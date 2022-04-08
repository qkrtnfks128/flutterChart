part of 'login_view_cubit.dart';

@freezed
class LoginViewState with _$LoginViewState {
  const factory LoginViewState.initial() = _Initial;
  const factory LoginViewState.loading() = _Loading;
  const factory LoginViewState.error(String message) = _Error;
  const factory LoginViewState.loaded() = _Loaded;
}
