import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_developer_test/features/auth/data/models/auth_request.dart';
import 'package:mobile_developer_test/features/auth/domain/entities/user.dart';
import 'package:mobile_developer_test/features/auth/domain/usecases/login.dart';
import 'package:mobile_developer_test/features/auth/domain/usecases/register.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final Login _login;
  final Register _register;

  AuthBloc(this._login, this._register) : super(const AuthState.initial()) {
    on<LoginSubmitted>(_onLoginSubmitted);
    on<RegisterSubmitted>(_onRegisterSubmitted);
    on<AuthModeToggled>(_onAuthModeToggled);
  }

  Future<void> _onLoginSubmitted(
    LoginSubmitted event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthState.loading(isLogin: state.isLogin));
    try {
      final user = await _login(
        AuthRequest(
          email: event.email,
          fullName: "fullName",
          password: event.password,
        ),
      );

      user.when(
        success: (data) => emit(
          AuthState.success(
            isLogin: state.isLogin,
            user: data,
          ),
        ),
        failure: (error) => emit(
          AuthState.failure(
            isLogin: state.isLogin,
            message: error.failure.message,
          ),
        ),
      );
    } catch (e) {
      emit(
        AuthState.failure(
          isLogin: state.isLogin,
          message: e.toString(),
        ),
      );
    }
  }

  Future<void> _onRegisterSubmitted(
    RegisterSubmitted event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthState.loading(isLogin: state.isLogin));
    try {
      final user = await _register(
        AuthRequest(
          email: event.email,
          fullName: "fullName",
          password: event.password,
        ),
      );

      user.when(
        success: (data) => emit(
          AuthState.success(
            isLogin: state.isLogin,
            user: data,
          ),
        ),
        failure: (error) => emit(
          AuthState.failure(
            isLogin: state.isLogin,
            message: error.toString(),
          ),
        ),
      );
    } catch (e) {
      emit(
        AuthState.failure(
          isLogin: state.isLogin,
          message: e.toString(),
        ),
      );
    }
  }

  void _onAuthModeToggled(
    AuthModeToggled event,
    Emitter<AuthState> emit,
  ) {
    emit(AuthState.initial(isLogin: !state.isLogin));
  }
}
