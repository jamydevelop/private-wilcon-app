part of "user_login_cubit.dart";

@freezed
class UserLoginState with _$UserLoginState {
  const factory UserLoginState.initial() = _Initial;
  const factory UserLoginState.loading() = _Loading;
  const factory UserLoginState.error() = _Error;
  const factory UserLoginState.fulfilled({
    required String email,
    required String password,
  }) = _Fulfilled;
}
