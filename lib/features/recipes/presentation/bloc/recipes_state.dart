part of 'recipes_bloc.dart';

@freezed
sealed class RecipesState with _$RecipesState {
  const factory RecipesState.initial() = RecipesInitial;

  const factory RecipesState.loading() = RecipesLoading;

  const factory RecipesState.success({
    required List<Recipes> allRecipes,
    required List<Recipes> filteredRecipes,
    required List<Recipes> favoriteRecipes,
    @Default(null) Recipes? recipeToToggleFavorite,
  }) = RecipesSuccess;

  const factory RecipesState.failure({
    required String message,
  }) = RecipesFailure;
}
