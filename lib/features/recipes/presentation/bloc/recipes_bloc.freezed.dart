// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRecipesCall,
    required TResult Function(Recipes recipe, bool isUndo, bool isFromDetails)
        toggleFavorite,
    required TResult Function(String query) searchRecipes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRecipesCall,
    TResult? Function(Recipes recipe, bool isUndo, bool isFromDetails)?
        toggleFavorite,
    TResult? Function(String query)? searchRecipes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRecipesCall,
    TResult Function(Recipes recipe, bool isUndo, bool isFromDetails)?
        toggleFavorite,
    TResult Function(String query)? searchRecipes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRecipesCall value) getRecipesCall,
    required TResult Function(ToggleFavorite value) toggleFavorite,
    required TResult Function(SearchRecipes value) searchRecipes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRecipesCall value)? getRecipesCall,
    TResult? Function(ToggleFavorite value)? toggleFavorite,
    TResult? Function(SearchRecipes value)? searchRecipes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRecipesCall value)? getRecipesCall,
    TResult Function(ToggleFavorite value)? toggleFavorite,
    TResult Function(SearchRecipes value)? searchRecipes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipesEventCopyWith<$Res> {
  factory $RecipesEventCopyWith(
          RecipesEvent value, $Res Function(RecipesEvent) then) =
      _$RecipesEventCopyWithImpl<$Res, RecipesEvent>;
}

/// @nodoc
class _$RecipesEventCopyWithImpl<$Res, $Val extends RecipesEvent>
    implements $RecipesEventCopyWith<$Res> {
  _$RecipesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecipesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetRecipesCallImplCopyWith<$Res> {
  factory _$$GetRecipesCallImplCopyWith(_$GetRecipesCallImpl value,
          $Res Function(_$GetRecipesCallImpl) then) =
      __$$GetRecipesCallImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRecipesCallImplCopyWithImpl<$Res>
    extends _$RecipesEventCopyWithImpl<$Res, _$GetRecipesCallImpl>
    implements _$$GetRecipesCallImplCopyWith<$Res> {
  __$$GetRecipesCallImplCopyWithImpl(
      _$GetRecipesCallImpl _value, $Res Function(_$GetRecipesCallImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetRecipesCallImpl implements GetRecipesCall {
  const _$GetRecipesCallImpl();

  @override
  String toString() {
    return 'RecipesEvent.getRecipesCall()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetRecipesCallImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRecipesCall,
    required TResult Function(Recipes recipe, bool isUndo, bool isFromDetails)
        toggleFavorite,
    required TResult Function(String query) searchRecipes,
  }) {
    return getRecipesCall();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRecipesCall,
    TResult? Function(Recipes recipe, bool isUndo, bool isFromDetails)?
        toggleFavorite,
    TResult? Function(String query)? searchRecipes,
  }) {
    return getRecipesCall?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRecipesCall,
    TResult Function(Recipes recipe, bool isUndo, bool isFromDetails)?
        toggleFavorite,
    TResult Function(String query)? searchRecipes,
    required TResult orElse(),
  }) {
    if (getRecipesCall != null) {
      return getRecipesCall();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRecipesCall value) getRecipesCall,
    required TResult Function(ToggleFavorite value) toggleFavorite,
    required TResult Function(SearchRecipes value) searchRecipes,
  }) {
    return getRecipesCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRecipesCall value)? getRecipesCall,
    TResult? Function(ToggleFavorite value)? toggleFavorite,
    TResult? Function(SearchRecipes value)? searchRecipes,
  }) {
    return getRecipesCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRecipesCall value)? getRecipesCall,
    TResult Function(ToggleFavorite value)? toggleFavorite,
    TResult Function(SearchRecipes value)? searchRecipes,
    required TResult orElse(),
  }) {
    if (getRecipesCall != null) {
      return getRecipesCall(this);
    }
    return orElse();
  }
}

abstract class GetRecipesCall implements RecipesEvent {
  const factory GetRecipesCall() = _$GetRecipesCallImpl;
}

/// @nodoc
abstract class _$$ToggleFavoriteImplCopyWith<$Res> {
  factory _$$ToggleFavoriteImplCopyWith(_$ToggleFavoriteImpl value,
          $Res Function(_$ToggleFavoriteImpl) then) =
      __$$ToggleFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Recipes recipe, bool isUndo, bool isFromDetails});

  $RecipesCopyWith<$Res> get recipe;
}

/// @nodoc
class __$$ToggleFavoriteImplCopyWithImpl<$Res>
    extends _$RecipesEventCopyWithImpl<$Res, _$ToggleFavoriteImpl>
    implements _$$ToggleFavoriteImplCopyWith<$Res> {
  __$$ToggleFavoriteImplCopyWithImpl(
      _$ToggleFavoriteImpl _value, $Res Function(_$ToggleFavoriteImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
    Object? isUndo = null,
    Object? isFromDetails = null,
  }) {
    return _then(_$ToggleFavoriteImpl(
      null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipes,
      isUndo: null == isUndo
          ? _value.isUndo
          : isUndo // ignore: cast_nullable_to_non_nullable
              as bool,
      isFromDetails: null == isFromDetails
          ? _value.isFromDetails
          : isFromDetails // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of RecipesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecipesCopyWith<$Res> get recipe {
    return $RecipesCopyWith<$Res>(_value.recipe, (value) {
      return _then(_value.copyWith(recipe: value));
    });
  }
}

/// @nodoc

class _$ToggleFavoriteImpl implements ToggleFavorite {
  const _$ToggleFavoriteImpl(this.recipe,
      {this.isUndo = false, this.isFromDetails = false});

  @override
  final Recipes recipe;
  @override
  @JsonKey()
  final bool isUndo;
  @override
  @JsonKey()
  final bool isFromDetails;

  @override
  String toString() {
    return 'RecipesEvent.toggleFavorite(recipe: $recipe, isUndo: $isUndo, isFromDetails: $isFromDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleFavoriteImpl &&
            (identical(other.recipe, recipe) || other.recipe == recipe) &&
            (identical(other.isUndo, isUndo) || other.isUndo == isUndo) &&
            (identical(other.isFromDetails, isFromDetails) ||
                other.isFromDetails == isFromDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipe, isUndo, isFromDetails);

  /// Create a copy of RecipesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleFavoriteImplCopyWith<_$ToggleFavoriteImpl> get copyWith =>
      __$$ToggleFavoriteImplCopyWithImpl<_$ToggleFavoriteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRecipesCall,
    required TResult Function(Recipes recipe, bool isUndo, bool isFromDetails)
        toggleFavorite,
    required TResult Function(String query) searchRecipes,
  }) {
    return toggleFavorite(recipe, isUndo, isFromDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRecipesCall,
    TResult? Function(Recipes recipe, bool isUndo, bool isFromDetails)?
        toggleFavorite,
    TResult? Function(String query)? searchRecipes,
  }) {
    return toggleFavorite?.call(recipe, isUndo, isFromDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRecipesCall,
    TResult Function(Recipes recipe, bool isUndo, bool isFromDetails)?
        toggleFavorite,
    TResult Function(String query)? searchRecipes,
    required TResult orElse(),
  }) {
    if (toggleFavorite != null) {
      return toggleFavorite(recipe, isUndo, isFromDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRecipesCall value) getRecipesCall,
    required TResult Function(ToggleFavorite value) toggleFavorite,
    required TResult Function(SearchRecipes value) searchRecipes,
  }) {
    return toggleFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRecipesCall value)? getRecipesCall,
    TResult? Function(ToggleFavorite value)? toggleFavorite,
    TResult? Function(SearchRecipes value)? searchRecipes,
  }) {
    return toggleFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRecipesCall value)? getRecipesCall,
    TResult Function(ToggleFavorite value)? toggleFavorite,
    TResult Function(SearchRecipes value)? searchRecipes,
    required TResult orElse(),
  }) {
    if (toggleFavorite != null) {
      return toggleFavorite(this);
    }
    return orElse();
  }
}

abstract class ToggleFavorite implements RecipesEvent {
  const factory ToggleFavorite(final Recipes recipe,
      {final bool isUndo, final bool isFromDetails}) = _$ToggleFavoriteImpl;

  Recipes get recipe;
  bool get isUndo;
  bool get isFromDetails;

  /// Create a copy of RecipesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleFavoriteImplCopyWith<_$ToggleFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchRecipesImplCopyWith<$Res> {
  factory _$$SearchRecipesImplCopyWith(
          _$SearchRecipesImpl value, $Res Function(_$SearchRecipesImpl) then) =
      __$$SearchRecipesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchRecipesImplCopyWithImpl<$Res>
    extends _$RecipesEventCopyWithImpl<$Res, _$SearchRecipesImpl>
    implements _$$SearchRecipesImplCopyWith<$Res> {
  __$$SearchRecipesImplCopyWithImpl(
      _$SearchRecipesImpl _value, $Res Function(_$SearchRecipesImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchRecipesImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchRecipesImpl implements SearchRecipes {
  const _$SearchRecipesImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'RecipesEvent.searchRecipes(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRecipesImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of RecipesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchRecipesImplCopyWith<_$SearchRecipesImpl> get copyWith =>
      __$$SearchRecipesImplCopyWithImpl<_$SearchRecipesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRecipesCall,
    required TResult Function(Recipes recipe, bool isUndo, bool isFromDetails)
        toggleFavorite,
    required TResult Function(String query) searchRecipes,
  }) {
    return searchRecipes(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRecipesCall,
    TResult? Function(Recipes recipe, bool isUndo, bool isFromDetails)?
        toggleFavorite,
    TResult? Function(String query)? searchRecipes,
  }) {
    return searchRecipes?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRecipesCall,
    TResult Function(Recipes recipe, bool isUndo, bool isFromDetails)?
        toggleFavorite,
    TResult Function(String query)? searchRecipes,
    required TResult orElse(),
  }) {
    if (searchRecipes != null) {
      return searchRecipes(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRecipesCall value) getRecipesCall,
    required TResult Function(ToggleFavorite value) toggleFavorite,
    required TResult Function(SearchRecipes value) searchRecipes,
  }) {
    return searchRecipes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRecipesCall value)? getRecipesCall,
    TResult? Function(ToggleFavorite value)? toggleFavorite,
    TResult? Function(SearchRecipes value)? searchRecipes,
  }) {
    return searchRecipes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRecipesCall value)? getRecipesCall,
    TResult Function(ToggleFavorite value)? toggleFavorite,
    TResult Function(SearchRecipes value)? searchRecipes,
    required TResult orElse(),
  }) {
    if (searchRecipes != null) {
      return searchRecipes(this);
    }
    return orElse();
  }
}

abstract class SearchRecipes implements RecipesEvent {
  const factory SearchRecipes(final String query) = _$SearchRecipesImpl;

  String get query;

  /// Create a copy of RecipesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchRecipesImplCopyWith<_$SearchRecipesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecipesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Recipes> allRecipes,
            List<Recipes> filteredRecipes,
            List<Recipes> favoriteRecipes,
            Recipes? recipeToToggleFavorite)
        success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Recipes> allRecipes, List<Recipes> filteredRecipes,
            List<Recipes> favoriteRecipes, Recipes? recipeToToggleFavorite)?
        success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipes> allRecipes, List<Recipes> filteredRecipes,
            List<Recipes> favoriteRecipes, Recipes? recipeToToggleFavorite)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipesInitial value) initial,
    required TResult Function(RecipesLoading value) loading,
    required TResult Function(RecipesSuccess value) success,
    required TResult Function(RecipesFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipesInitial value)? initial,
    TResult? Function(RecipesLoading value)? loading,
    TResult? Function(RecipesSuccess value)? success,
    TResult? Function(RecipesFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipesInitial value)? initial,
    TResult Function(RecipesLoading value)? loading,
    TResult Function(RecipesSuccess value)? success,
    TResult Function(RecipesFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipesStateCopyWith<$Res> {
  factory $RecipesStateCopyWith(
          RecipesState value, $Res Function(RecipesState) then) =
      _$RecipesStateCopyWithImpl<$Res, RecipesState>;
}

/// @nodoc
class _$RecipesStateCopyWithImpl<$Res, $Val extends RecipesState>
    implements $RecipesStateCopyWith<$Res> {
  _$RecipesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecipesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RecipesInitialImplCopyWith<$Res> {
  factory _$$RecipesInitialImplCopyWith(_$RecipesInitialImpl value,
          $Res Function(_$RecipesInitialImpl) then) =
      __$$RecipesInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipesInitialImplCopyWithImpl<$Res>
    extends _$RecipesStateCopyWithImpl<$Res, _$RecipesInitialImpl>
    implements _$$RecipesInitialImplCopyWith<$Res> {
  __$$RecipesInitialImplCopyWithImpl(
      _$RecipesInitialImpl _value, $Res Function(_$RecipesInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RecipesInitialImpl implements RecipesInitial {
  const _$RecipesInitialImpl();

  @override
  String toString() {
    return 'RecipesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecipesInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Recipes> allRecipes,
            List<Recipes> filteredRecipes,
            List<Recipes> favoriteRecipes,
            Recipes? recipeToToggleFavorite)
        success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Recipes> allRecipes, List<Recipes> filteredRecipes,
            List<Recipes> favoriteRecipes, Recipes? recipeToToggleFavorite)?
        success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipes> allRecipes, List<Recipes> filteredRecipes,
            List<Recipes> favoriteRecipes, Recipes? recipeToToggleFavorite)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipesInitial value) initial,
    required TResult Function(RecipesLoading value) loading,
    required TResult Function(RecipesSuccess value) success,
    required TResult Function(RecipesFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipesInitial value)? initial,
    TResult? Function(RecipesLoading value)? loading,
    TResult? Function(RecipesSuccess value)? success,
    TResult? Function(RecipesFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipesInitial value)? initial,
    TResult Function(RecipesLoading value)? loading,
    TResult Function(RecipesSuccess value)? success,
    TResult Function(RecipesFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RecipesInitial implements RecipesState {
  const factory RecipesInitial() = _$RecipesInitialImpl;
}

/// @nodoc
abstract class _$$RecipesLoadingImplCopyWith<$Res> {
  factory _$$RecipesLoadingImplCopyWith(_$RecipesLoadingImpl value,
          $Res Function(_$RecipesLoadingImpl) then) =
      __$$RecipesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipesLoadingImplCopyWithImpl<$Res>
    extends _$RecipesStateCopyWithImpl<$Res, _$RecipesLoadingImpl>
    implements _$$RecipesLoadingImplCopyWith<$Res> {
  __$$RecipesLoadingImplCopyWithImpl(
      _$RecipesLoadingImpl _value, $Res Function(_$RecipesLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RecipesLoadingImpl implements RecipesLoading {
  const _$RecipesLoadingImpl();

  @override
  String toString() {
    return 'RecipesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecipesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Recipes> allRecipes,
            List<Recipes> filteredRecipes,
            List<Recipes> favoriteRecipes,
            Recipes? recipeToToggleFavorite)
        success,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Recipes> allRecipes, List<Recipes> filteredRecipes,
            List<Recipes> favoriteRecipes, Recipes? recipeToToggleFavorite)?
        success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipes> allRecipes, List<Recipes> filteredRecipes,
            List<Recipes> favoriteRecipes, Recipes? recipeToToggleFavorite)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipesInitial value) initial,
    required TResult Function(RecipesLoading value) loading,
    required TResult Function(RecipesSuccess value) success,
    required TResult Function(RecipesFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipesInitial value)? initial,
    TResult? Function(RecipesLoading value)? loading,
    TResult? Function(RecipesSuccess value)? success,
    TResult? Function(RecipesFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipesInitial value)? initial,
    TResult Function(RecipesLoading value)? loading,
    TResult Function(RecipesSuccess value)? success,
    TResult Function(RecipesFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RecipesLoading implements RecipesState {
  const factory RecipesLoading() = _$RecipesLoadingImpl;
}

/// @nodoc
abstract class _$$RecipesSuccessImplCopyWith<$Res> {
  factory _$$RecipesSuccessImplCopyWith(_$RecipesSuccessImpl value,
          $Res Function(_$RecipesSuccessImpl) then) =
      __$$RecipesSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Recipes> allRecipes,
      List<Recipes> filteredRecipes,
      List<Recipes> favoriteRecipes,
      Recipes? recipeToToggleFavorite});

  $RecipesCopyWith<$Res>? get recipeToToggleFavorite;
}

/// @nodoc
class __$$RecipesSuccessImplCopyWithImpl<$Res>
    extends _$RecipesStateCopyWithImpl<$Res, _$RecipesSuccessImpl>
    implements _$$RecipesSuccessImplCopyWith<$Res> {
  __$$RecipesSuccessImplCopyWithImpl(
      _$RecipesSuccessImpl _value, $Res Function(_$RecipesSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allRecipes = null,
    Object? filteredRecipes = null,
    Object? favoriteRecipes = null,
    Object? recipeToToggleFavorite = freezed,
  }) {
    return _then(_$RecipesSuccessImpl(
      allRecipes: null == allRecipes
          ? _value._allRecipes
          : allRecipes // ignore: cast_nullable_to_non_nullable
              as List<Recipes>,
      filteredRecipes: null == filteredRecipes
          ? _value._filteredRecipes
          : filteredRecipes // ignore: cast_nullable_to_non_nullable
              as List<Recipes>,
      favoriteRecipes: null == favoriteRecipes
          ? _value._favoriteRecipes
          : favoriteRecipes // ignore: cast_nullable_to_non_nullable
              as List<Recipes>,
      recipeToToggleFavorite: freezed == recipeToToggleFavorite
          ? _value.recipeToToggleFavorite
          : recipeToToggleFavorite // ignore: cast_nullable_to_non_nullable
              as Recipes?,
    ));
  }

  /// Create a copy of RecipesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecipesCopyWith<$Res>? get recipeToToggleFavorite {
    if (_value.recipeToToggleFavorite == null) {
      return null;
    }

    return $RecipesCopyWith<$Res>(_value.recipeToToggleFavorite!, (value) {
      return _then(_value.copyWith(recipeToToggleFavorite: value));
    });
  }
}

/// @nodoc

class _$RecipesSuccessImpl implements RecipesSuccess {
  const _$RecipesSuccessImpl(
      {required final List<Recipes> allRecipes,
      required final List<Recipes> filteredRecipes,
      required final List<Recipes> favoriteRecipes,
      this.recipeToToggleFavorite = null})
      : _allRecipes = allRecipes,
        _filteredRecipes = filteredRecipes,
        _favoriteRecipes = favoriteRecipes;

  final List<Recipes> _allRecipes;
  @override
  List<Recipes> get allRecipes {
    if (_allRecipes is EqualUnmodifiableListView) return _allRecipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allRecipes);
  }

  final List<Recipes> _filteredRecipes;
  @override
  List<Recipes> get filteredRecipes {
    if (_filteredRecipes is EqualUnmodifiableListView) return _filteredRecipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredRecipes);
  }

  final List<Recipes> _favoriteRecipes;
  @override
  List<Recipes> get favoriteRecipes {
    if (_favoriteRecipes is EqualUnmodifiableListView) return _favoriteRecipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteRecipes);
  }

  @override
  @JsonKey()
  final Recipes? recipeToToggleFavorite;

  @override
  String toString() {
    return 'RecipesState.success(allRecipes: $allRecipes, filteredRecipes: $filteredRecipes, favoriteRecipes: $favoriteRecipes, recipeToToggleFavorite: $recipeToToggleFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipesSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._allRecipes, _allRecipes) &&
            const DeepCollectionEquality()
                .equals(other._filteredRecipes, _filteredRecipes) &&
            const DeepCollectionEquality()
                .equals(other._favoriteRecipes, _favoriteRecipes) &&
            (identical(other.recipeToToggleFavorite, recipeToToggleFavorite) ||
                other.recipeToToggleFavorite == recipeToToggleFavorite));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allRecipes),
      const DeepCollectionEquality().hash(_filteredRecipes),
      const DeepCollectionEquality().hash(_favoriteRecipes),
      recipeToToggleFavorite);

  /// Create a copy of RecipesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipesSuccessImplCopyWith<_$RecipesSuccessImpl> get copyWith =>
      __$$RecipesSuccessImplCopyWithImpl<_$RecipesSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Recipes> allRecipes,
            List<Recipes> filteredRecipes,
            List<Recipes> favoriteRecipes,
            Recipes? recipeToToggleFavorite)
        success,
    required TResult Function(String message) failure,
  }) {
    return success(
        allRecipes, filteredRecipes, favoriteRecipes, recipeToToggleFavorite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Recipes> allRecipes, List<Recipes> filteredRecipes,
            List<Recipes> favoriteRecipes, Recipes? recipeToToggleFavorite)?
        success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(
        allRecipes, filteredRecipes, favoriteRecipes, recipeToToggleFavorite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipes> allRecipes, List<Recipes> filteredRecipes,
            List<Recipes> favoriteRecipes, Recipes? recipeToToggleFavorite)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(
          allRecipes, filteredRecipes, favoriteRecipes, recipeToToggleFavorite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipesInitial value) initial,
    required TResult Function(RecipesLoading value) loading,
    required TResult Function(RecipesSuccess value) success,
    required TResult Function(RecipesFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipesInitial value)? initial,
    TResult? Function(RecipesLoading value)? loading,
    TResult? Function(RecipesSuccess value)? success,
    TResult? Function(RecipesFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipesInitial value)? initial,
    TResult Function(RecipesLoading value)? loading,
    TResult Function(RecipesSuccess value)? success,
    TResult Function(RecipesFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RecipesSuccess implements RecipesState {
  const factory RecipesSuccess(
      {required final List<Recipes> allRecipes,
      required final List<Recipes> filteredRecipes,
      required final List<Recipes> favoriteRecipes,
      final Recipes? recipeToToggleFavorite}) = _$RecipesSuccessImpl;

  List<Recipes> get allRecipes;
  List<Recipes> get filteredRecipes;
  List<Recipes> get favoriteRecipes;
  Recipes? get recipeToToggleFavorite;

  /// Create a copy of RecipesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecipesSuccessImplCopyWith<_$RecipesSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecipesFailureImplCopyWith<$Res> {
  factory _$$RecipesFailureImplCopyWith(_$RecipesFailureImpl value,
          $Res Function(_$RecipesFailureImpl) then) =
      __$$RecipesFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RecipesFailureImplCopyWithImpl<$Res>
    extends _$RecipesStateCopyWithImpl<$Res, _$RecipesFailureImpl>
    implements _$$RecipesFailureImplCopyWith<$Res> {
  __$$RecipesFailureImplCopyWithImpl(
      _$RecipesFailureImpl _value, $Res Function(_$RecipesFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecipesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RecipesFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RecipesFailureImpl implements RecipesFailure {
  const _$RecipesFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RecipesState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipesFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RecipesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipesFailureImplCopyWith<_$RecipesFailureImpl> get copyWith =>
      __$$RecipesFailureImplCopyWithImpl<_$RecipesFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Recipes> allRecipes,
            List<Recipes> filteredRecipes,
            List<Recipes> favoriteRecipes,
            Recipes? recipeToToggleFavorite)
        success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Recipes> allRecipes, List<Recipes> filteredRecipes,
            List<Recipes> favoriteRecipes, Recipes? recipeToToggleFavorite)?
        success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Recipes> allRecipes, List<Recipes> filteredRecipes,
            List<Recipes> favoriteRecipes, Recipes? recipeToToggleFavorite)?
        success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipesInitial value) initial,
    required TResult Function(RecipesLoading value) loading,
    required TResult Function(RecipesSuccess value) success,
    required TResult Function(RecipesFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipesInitial value)? initial,
    TResult? Function(RecipesLoading value)? loading,
    TResult? Function(RecipesSuccess value)? success,
    TResult? Function(RecipesFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipesInitial value)? initial,
    TResult Function(RecipesLoading value)? loading,
    TResult Function(RecipesSuccess value)? success,
    TResult Function(RecipesFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class RecipesFailure implements RecipesState {
  const factory RecipesFailure({required final String message}) =
      _$RecipesFailureImpl;

  String get message;

  /// Create a copy of RecipesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecipesFailureImplCopyWith<_$RecipesFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
