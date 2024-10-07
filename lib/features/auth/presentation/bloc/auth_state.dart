part of 'auth_bloc.dart';


@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.initial({
    @Default(true) bool isLogin,
  }) = AuthInitial;

  const factory AuthState.loading({
    required bool isLogin,
  }) = AuthLoading;

  const factory AuthState.success({
    required bool isLogin,
    required User user,
  }) = AuthSuccess;

  const factory AuthState.failure({
    required bool isLogin,
    required String message,
  }) = AuthFailure;
}

