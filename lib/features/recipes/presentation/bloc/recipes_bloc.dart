import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_developer_test/core/constant/cache_keys.dart';
import 'package:mobile_developer_test/core/helpers/helpers.dart';
import 'package:mobile_developer_test/features/recipes/domain/entities/recipes.dart';
import 'package:mobile_developer_test/features/recipes/domain/usecases/get_recipes.dart';

part 'recipes_bloc.freezed.dart';
part 'recipes_event.dart';
part 'recipes_state.dart';

class RecipesBloc extends Bloc<RecipesEvent, RecipesState> {
  final GetRecipes _getRecipes;
  final DatabaseHelper _databaseHelper;
  RecipesBloc(this._getRecipes, this._databaseHelper)
      : super(const RecipesInitial()) {
    on<GetRecipesCall>(getRecipes);
    on<ToggleFavorite>(toggleFavorite);
    on<SearchRecipes>(searchRecipes);
  }

  Future<void> getRecipes(
    GetRecipesCall event,
    Emitter<RecipesState> emit,
  ) async {
    emit(const RecipesLoading());
    try {
      final result = await _getRecipes();
      await result.when(
        success: (data) async {
          var userId = await CacheHelper.getData(key: CacheKeys.userId);
          final favoriteIds =
              await _databaseHelper.getFavoriteRecipeIds(userId);

          final updatedRecipes = data.map((recipe) {
            return recipe.copyWith(
              isFavourite: favoriteIds.contains(recipe.id),
            );
          }).toList();
          // Filter out favorite recipes
          final favoriteRecipes =
              updatedRecipes.where((recipe) => recipe.isFavourite).toList();
          emit(RecipesSuccess(
            allRecipes: updatedRecipes,
            filteredRecipes: updatedRecipes,
            favoriteRecipes: favoriteRecipes,
          ));
        },
        failure: (failure) {
          emit(RecipesFailure(message: failure.failure.message));
        },
      );
    } catch (e) {
      emit(RecipesFailure(message: e.toString()));
    }
  }

  Future<void> toggleFavorite(
    ToggleFavorite event,
    Emitter<RecipesState> emit,
  ) async {
    if (state is RecipesSuccess) {
      final currentState = state as RecipesSuccess;
      final recipeId = event.recipe.id;
      final isUndo = event.isUndo;

      if (recipeId == null) return;
      var userId = await CacheHelper.getData(key: CacheKeys.userId);
      bool success;
      if (event.recipe.isFavourite) {
        success = await _databaseHelper.removeFromFavorites(userId, recipeId);
      } else {
        success = await _databaseHelper.addToFavorites(userId, recipeId);
      }

      if (success) {
        final updatedAllRecipes = currentState.allRecipes.map((recipe) {
          if (recipe.id == recipeId) {
            return recipe.copyWith(isFavourite: !recipe.isFavourite);
          }
          return recipe;
        }).toList();

        final updatedFilteredRecipes =
            currentState.filteredRecipes.map((recipe) {
          if (recipe.id == recipeId) {
            return recipe.copyWith(isFavourite: !recipe.isFavourite);
          }
          return recipe;
        }).toList();

        List<Recipes> updatedFavoriteRecipes;
        if (event.recipe.isFavourite) {
          updatedFavoriteRecipes = currentState.favoriteRecipes
              .where((recipe) => recipe.id != recipeId)
              .toList();
        } else {
          updatedFavoriteRecipes = [
            ...currentState.favoriteRecipes,
            event.recipe.copyWith(isFavourite: true),
          ];
        }
        emit(currentState.copyWith(
          allRecipes: updatedAllRecipes,
          filteredRecipes: updatedFilteredRecipes,
          favoriteRecipes: updatedFavoriteRecipes,
          recipeToToggleFavorite: !isUndo
              ? event.isFromDetails
                  ? null
                  : event.recipe
              : null,
        ));
      }
    }
  }

  void searchRecipes(
    SearchRecipes event,
    Emitter<RecipesState> emit,
  ) {
    if (state is RecipesSuccess) {
      final currentState = state as RecipesSuccess;
      final query = event.query.toLowerCase();

      if (query.isEmpty) {
        emit(currentState.copyWith(filteredRecipes: currentState.allRecipes));
      } else {
        final filteredRecipes = currentState.allRecipes.where((recipe) {
          return recipe.name!.toLowerCase().contains(query) ||
              recipe.description!.toLowerCase().contains(query);
        }).toList();
        emit(currentState.copyWith(filteredRecipes: filteredRecipes));
      }
    }
  }
}
