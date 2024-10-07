part of 'recipes_bloc.dart';

@freezed
sealed class RecipesEvent with _$RecipesEvent {
  const factory RecipesEvent.getRecipesCall() = GetRecipesCall;
  const factory RecipesEvent.toggleFavorite(
    Recipes recipe, {
    @Default(false) bool isUndo,
    @Default(false) bool isFromDetails,
  }) = ToggleFavorite;
  const factory RecipesEvent.searchRecipes(String query) = SearchRecipes;
}
