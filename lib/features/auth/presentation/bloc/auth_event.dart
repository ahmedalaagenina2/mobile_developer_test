part of 'auth_bloc.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loginSubmitted({
    required String email,
    required String password,
  }) = LoginSubmitted;

  const factory AuthEvent.registerSubmitted({
    required String email,
    required String password,
  }) = RegisterSubmitted;

  const factory AuthEvent.authModeToggled() = AuthModeToggled;
}
