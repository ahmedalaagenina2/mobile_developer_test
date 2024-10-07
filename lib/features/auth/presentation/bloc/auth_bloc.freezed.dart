// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginSubmitted,
    required TResult Function(String email, String password) registerSubmitted,
    required TResult Function() authModeToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginSubmitted,
    TResult? Function(String email, String password)? registerSubmitted,
    TResult? Function()? authModeToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginSubmitted,
    TResult Function(String email, String password)? registerSubmitted,
    TResult Function()? authModeToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginSubmitted value) loginSubmitted,
    required TResult Function(RegisterSubmitted value) registerSubmitted,
    required TResult Function(AuthModeToggled value) authModeToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginSubmitted value)? loginSubmitted,
    TResult? Function(RegisterSubmitted value)? registerSubmitted,
    TResult? Function(AuthModeToggled value)? authModeToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(RegisterSubmitted value)? registerSubmitted,
    TResult Function(AuthModeToggled value)? authModeToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginSubmittedImplCopyWith<$Res> {
  factory _$$LoginSubmittedImplCopyWith(_$LoginSubmittedImpl value,
          $Res Function(_$LoginSubmittedImpl) then) =
      __$$LoginSubmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginSubmittedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginSubmittedImpl>
    implements _$$LoginSubmittedImplCopyWith<$Res> {
  __$$LoginSubmittedImplCopyWithImpl(
      _$LoginSubmittedImpl _value, $Res Function(_$LoginSubmittedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginSubmittedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginSubmittedImpl implements LoginSubmitted {
  const _$LoginSubmittedImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.loginSubmitted(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSubmittedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSubmittedImplCopyWith<_$LoginSubmittedImpl> get copyWith =>
      __$$LoginSubmittedImplCopyWithImpl<_$LoginSubmittedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginSubmitted,
    required TResult Function(String email, String password) registerSubmitted,
    required TResult Function() authModeToggled,
  }) {
    return loginSubmitted(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginSubmitted,
    TResult? Function(String email, String password)? registerSubmitted,
    TResult? Function()? authModeToggled,
  }) {
    return loginSubmitted?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginSubmitted,
    TResult Function(String email, String password)? registerSubmitted,
    TResult Function()? authModeToggled,
    required TResult orElse(),
  }) {
    if (loginSubmitted != null) {
      return loginSubmitted(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginSubmitted value) loginSubmitted,
    required TResult Function(RegisterSubmitted value) registerSubmitted,
    required TResult Function(AuthModeToggled value) authModeToggled,
  }) {
    return loginSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginSubmitted value)? loginSubmitted,
    TResult? Function(RegisterSubmitted value)? registerSubmitted,
    TResult? Function(AuthModeToggled value)? authModeToggled,
  }) {
    return loginSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(RegisterSubmitted value)? registerSubmitted,
    TResult Function(AuthModeToggled value)? authModeToggled,
    required TResult orElse(),
  }) {
    if (loginSubmitted != null) {
      return loginSubmitted(this);
    }
    return orElse();
  }
}

abstract class LoginSubmitted implements AuthEvent {
  const factory LoginSubmitted(
      {required final String email,
      required final String password}) = _$LoginSubmittedImpl;

  String get email;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginSubmittedImplCopyWith<_$LoginSubmittedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterSubmittedImplCopyWith<$Res> {
  factory _$$RegisterSubmittedImplCopyWith(_$RegisterSubmittedImpl value,
          $Res Function(_$RegisterSubmittedImpl) then) =
      __$$RegisterSubmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$RegisterSubmittedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterSubmittedImpl>
    implements _$$RegisterSubmittedImplCopyWith<$Res> {
  __$$RegisterSubmittedImplCopyWithImpl(_$RegisterSubmittedImpl _value,
      $Res Function(_$RegisterSubmittedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$RegisterSubmittedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterSubmittedImpl implements RegisterSubmitted {
  const _$RegisterSubmittedImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.registerSubmitted(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterSubmittedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterSubmittedImplCopyWith<_$RegisterSubmittedImpl> get copyWith =>
      __$$RegisterSubmittedImplCopyWithImpl<_$RegisterSubmittedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginSubmitted,
    required TResult Function(String email, String password) registerSubmitted,
    required TResult Function() authModeToggled,
  }) {
    return registerSubmitted(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginSubmitted,
    TResult? Function(String email, String password)? registerSubmitted,
    TResult? Function()? authModeToggled,
  }) {
    return registerSubmitted?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginSubmitted,
    TResult Function(String email, String password)? registerSubmitted,
    TResult Function()? authModeToggled,
    required TResult orElse(),
  }) {
    if (registerSubmitted != null) {
      return registerSubmitted(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginSubmitted value) loginSubmitted,
    required TResult Function(RegisterSubmitted value) registerSubmitted,
    required TResult Function(AuthModeToggled value) authModeToggled,
  }) {
    return registerSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginSubmitted value)? loginSubmitted,
    TResult? Function(RegisterSubmitted value)? registerSubmitted,
    TResult? Function(AuthModeToggled value)? authModeToggled,
  }) {
    return registerSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(RegisterSubmitted value)? registerSubmitted,
    TResult Function(AuthModeToggled value)? authModeToggled,
    required TResult orElse(),
  }) {
    if (registerSubmitted != null) {
      return registerSubmitted(this);
    }
    return orElse();
  }
}

abstract class RegisterSubmitted implements AuthEvent {
  const factory RegisterSubmitted(
      {required final String email,
      required final String password}) = _$RegisterSubmittedImpl;

  String get email;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterSubmittedImplCopyWith<_$RegisterSubmittedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthModeToggledImplCopyWith<$Res> {
  factory _$$AuthModeToggledImplCopyWith(_$AuthModeToggledImpl value,
          $Res Function(_$AuthModeToggledImpl) then) =
      __$$AuthModeToggledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthModeToggledImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthModeToggledImpl>
    implements _$$AuthModeToggledImplCopyWith<$Res> {
  __$$AuthModeToggledImplCopyWithImpl(
      _$AuthModeToggledImpl _value, $Res Function(_$AuthModeToggledImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthModeToggledImpl implements AuthModeToggled {
  const _$AuthModeToggledImpl();

  @override
  String toString() {
    return 'AuthEvent.authModeToggled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthModeToggledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginSubmitted,
    required TResult Function(String email, String password) registerSubmitted,
    required TResult Function() authModeToggled,
  }) {
    return authModeToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginSubmitted,
    TResult? Function(String email, String password)? registerSubmitted,
    TResult? Function()? authModeToggled,
  }) {
    return authModeToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginSubmitted,
    TResult Function(String email, String password)? registerSubmitted,
    TResult Function()? authModeToggled,
    required TResult orElse(),
  }) {
    if (authModeToggled != null) {
      return authModeToggled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginSubmitted value) loginSubmitted,
    required TResult Function(RegisterSubmitted value) registerSubmitted,
    required TResult Function(AuthModeToggled value) authModeToggled,
  }) {
    return authModeToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginSubmitted value)? loginSubmitted,
    TResult? Function(RegisterSubmitted value)? registerSubmitted,
    TResult? Function(AuthModeToggled value)? authModeToggled,
  }) {
    return authModeToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginSubmitted value)? loginSubmitted,
    TResult Function(RegisterSubmitted value)? registerSubmitted,
    TResult Function(AuthModeToggled value)? authModeToggled,
    required TResult orElse(),
  }) {
    if (authModeToggled != null) {
      return authModeToggled(this);
    }
    return orElse();
  }
}

abstract class AuthModeToggled implements AuthEvent {
  const factory AuthModeToggled() = _$AuthModeToggledImpl;
}

/// @nodoc
mixin _$AuthState {
  bool get isLogin => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLogin) initial,
    required TResult Function(bool isLogin) loading,
    required TResult Function(bool isLogin, User user) success,
    required TResult Function(bool isLogin, String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLogin)? initial,
    TResult? Function(bool isLogin)? loading,
    TResult? Function(bool isLogin, User user)? success,
    TResult? Function(bool isLogin, String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLogin)? initial,
    TResult Function(bool isLogin)? loading,
    TResult Function(bool isLogin, User user)? success,
    TResult Function(bool isLogin, String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthSuccess value) success,
    required TResult Function(AuthFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthSuccess value)? success,
    TResult? Function(AuthFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({bool isLogin});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLogin = null,
  }) {
    return _then(_value.copyWith(
      isLogin: null == isLogin
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthInitialImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthInitialImplCopyWith(
          _$AuthInitialImpl value, $Res Function(_$AuthInitialImpl) then) =
      __$$AuthInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLogin});
}

/// @nodoc
class __$$AuthInitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthInitialImpl>
    implements _$$AuthInitialImplCopyWith<$Res> {
  __$$AuthInitialImplCopyWithImpl(
      _$AuthInitialImpl _value, $Res Function(_$AuthInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLogin = null,
  }) {
    return _then(_$AuthInitialImpl(
      isLogin: null == isLogin
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthInitialImpl implements AuthInitial {
  const _$AuthInitialImpl({this.isLogin = true});

  @override
  @JsonKey()
  final bool isLogin;

  @override
  String toString() {
    return 'AuthState.initial(isLogin: $isLogin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthInitialImpl &&
            (identical(other.isLogin, isLogin) || other.isLogin == isLogin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLogin);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthInitialImplCopyWith<_$AuthInitialImpl> get copyWith =>
      __$$AuthInitialImplCopyWithImpl<_$AuthInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLogin) initial,
    required TResult Function(bool isLogin) loading,
    required TResult Function(bool isLogin, User user) success,
    required TResult Function(bool isLogin, String message) failure,
  }) {
    return initial(isLogin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLogin)? initial,
    TResult? Function(bool isLogin)? loading,
    TResult? Function(bool isLogin, User user)? success,
    TResult? Function(bool isLogin, String message)? failure,
  }) {
    return initial?.call(isLogin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLogin)? initial,
    TResult Function(bool isLogin)? loading,
    TResult Function(bool isLogin, User user)? success,
    TResult Function(bool isLogin, String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isLogin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthSuccess value) success,
    required TResult Function(AuthFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthSuccess value)? success,
    TResult? Function(AuthFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthInitial implements AuthState {
  const factory AuthInitial({final bool isLogin}) = _$AuthInitialImpl;

  @override
  bool get isLogin;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthInitialImplCopyWith<_$AuthInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthLoadingImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthLoadingImplCopyWith(
          _$AuthLoadingImpl value, $Res Function(_$AuthLoadingImpl) then) =
      __$$AuthLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLogin});
}

/// @nodoc
class __$$AuthLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthLoadingImpl>
    implements _$$AuthLoadingImplCopyWith<$Res> {
  __$$AuthLoadingImplCopyWithImpl(
      _$AuthLoadingImpl _value, $Res Function(_$AuthLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLogin = null,
  }) {
    return _then(_$AuthLoadingImpl(
      isLogin: null == isLogin
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthLoadingImpl implements AuthLoading {
  const _$AuthLoadingImpl({required this.isLogin});

  @override
  final bool isLogin;

  @override
  String toString() {
    return 'AuthState.loading(isLogin: $isLogin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthLoadingImpl &&
            (identical(other.isLogin, isLogin) || other.isLogin == isLogin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLogin);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthLoadingImplCopyWith<_$AuthLoadingImpl> get copyWith =>
      __$$AuthLoadingImplCopyWithImpl<_$AuthLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLogin) initial,
    required TResult Function(bool isLogin) loading,
    required TResult Function(bool isLogin, User user) success,
    required TResult Function(bool isLogin, String message) failure,
  }) {
    return loading(isLogin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLogin)? initial,
    TResult? Function(bool isLogin)? loading,
    TResult? Function(bool isLogin, User user)? success,
    TResult? Function(bool isLogin, String message)? failure,
  }) {
    return loading?.call(isLogin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLogin)? initial,
    TResult Function(bool isLogin)? loading,
    TResult Function(bool isLogin, User user)? success,
    TResult Function(bool isLogin, String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isLogin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthSuccess value) success,
    required TResult Function(AuthFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthSuccess value)? success,
    TResult? Function(AuthFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthLoading implements AuthState {
  const factory AuthLoading({required final bool isLogin}) = _$AuthLoadingImpl;

  @override
  bool get isLogin;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthLoadingImplCopyWith<_$AuthLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthSuccessImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthSuccessImplCopyWith(
          _$AuthSuccessImpl value, $Res Function(_$AuthSuccessImpl) then) =
      __$$AuthSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLogin, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthSuccessImpl>
    implements _$$AuthSuccessImplCopyWith<$Res> {
  __$$AuthSuccessImplCopyWithImpl(
      _$AuthSuccessImpl _value, $Res Function(_$AuthSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLogin = null,
    Object? user = null,
  }) {
    return _then(_$AuthSuccessImpl(
      isLogin: null == isLogin
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$AuthSuccessImpl implements AuthSuccess {
  const _$AuthSuccessImpl({required this.isLogin, required this.user});

  @override
  final bool isLogin;
  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.success(isLogin: $isLogin, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSuccessImpl &&
            (identical(other.isLogin, isLogin) || other.isLogin == isLogin) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLogin, user);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSuccessImplCopyWith<_$AuthSuccessImpl> get copyWith =>
      __$$AuthSuccessImplCopyWithImpl<_$AuthSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLogin) initial,
    required TResult Function(bool isLogin) loading,
    required TResult Function(bool isLogin, User user) success,
    required TResult Function(bool isLogin, String message) failure,
  }) {
    return success(isLogin, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLogin)? initial,
    TResult? Function(bool isLogin)? loading,
    TResult? Function(bool isLogin, User user)? success,
    TResult? Function(bool isLogin, String message)? failure,
  }) {
    return success?.call(isLogin, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLogin)? initial,
    TResult Function(bool isLogin)? loading,
    TResult Function(bool isLogin, User user)? success,
    TResult Function(bool isLogin, String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(isLogin, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthSuccess value) success,
    required TResult Function(AuthFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthSuccess value)? success,
    TResult? Function(AuthFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AuthSuccess implements AuthState {
  const factory AuthSuccess(
      {required final bool isLogin,
      required final User user}) = _$AuthSuccessImpl;

  @override
  bool get isLogin;
  User get user;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthSuccessImplCopyWith<_$AuthSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthFailureImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthFailureImplCopyWith(
          _$AuthFailureImpl value, $Res Function(_$AuthFailureImpl) then) =
      __$$AuthFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLogin, String message});
}

/// @nodoc
class __$$AuthFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthFailureImpl>
    implements _$$AuthFailureImplCopyWith<$Res> {
  __$$AuthFailureImplCopyWithImpl(
      _$AuthFailureImpl _value, $Res Function(_$AuthFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLogin = null,
    Object? message = null,
  }) {
    return _then(_$AuthFailureImpl(
      isLogin: null == isLogin
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthFailureImpl implements AuthFailure {
  const _$AuthFailureImpl({required this.isLogin, required this.message});

  @override
  final bool isLogin;
  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.failure(isLogin: $isLogin, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailureImpl &&
            (identical(other.isLogin, isLogin) || other.isLogin == isLogin) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLogin, message);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFailureImplCopyWith<_$AuthFailureImpl> get copyWith =>
      __$$AuthFailureImplCopyWithImpl<_$AuthFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLogin) initial,
    required TResult Function(bool isLogin) loading,
    required TResult Function(bool isLogin, User user) success,
    required TResult Function(bool isLogin, String message) failure,
  }) {
    return failure(isLogin, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLogin)? initial,
    TResult? Function(bool isLogin)? loading,
    TResult? Function(bool isLogin, User user)? success,
    TResult? Function(bool isLogin, String message)? failure,
  }) {
    return failure?.call(isLogin, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLogin)? initial,
    TResult Function(bool isLogin)? loading,
    TResult Function(bool isLogin, User user)? success,
    TResult Function(bool isLogin, String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(isLogin, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthSuccess value) success,
    required TResult Function(AuthFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthInitial value)? initial,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthSuccess value)? success,
    TResult? Function(AuthFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AuthFailure implements AuthState {
  const factory AuthFailure(
      {required final bool isLogin,
      required final String message}) = _$AuthFailureImpl;

  @override
  bool get isLogin;
  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthFailureImplCopyWith<_$AuthFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
