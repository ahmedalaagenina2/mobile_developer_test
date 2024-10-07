import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_developer_test/features/recipes/domain/entities/recipes.dart';

part 'recipes_model.freezed.dart';
part 'recipes_model.g.dart';

@freezed
class RecipesModel with _$RecipesModel {
  const factory RecipesModel({
    String? id,
    String? fats,
    String? name,
    String? time,
    String? image,
    List<String>? weeks,
    String? carbos,
    String? fibers,
    double? rating,
    String? country,
    double? ratings,
    String? calories,
    String? headline,
    List<String>? keywords,
    List<String>? products,
    String? proteins,
    int? favorites,
    int? difficulty,
    String? description,
    bool? highlighted,
    List<String>? ingredients,
    @JsonKey(name: 'deliverable_ingredients')
    List<String>? deliverableIngredients,
    @JsonKey(name: 'undeliverable_ingredients')
    List<String>? undeliverableIngredients,
  }) = _RecipesModel;
  factory RecipesModel.fromJson(Map<String, dynamic> json) =>
      _$RecipesModelFromJson(json);
}

// Extension to convert AuthResponse to User
extension UserModelX on RecipesModel {
  Recipes toEntity() => Recipes(
        id: id,
        fats: fats,
        name: name,
        image: image,
        carbos: carbos,
        fibers: fibers,
        rating: rating,
        country: country,
        ratings: ratings,
        calories: calories,
        headline: headline,
        products: products,
        proteins: proteins,
        favorites: favorites,
        difficulty: difficulty,
        description: description,
        ingredients: ingredients,
        deliverableIngredients: deliverableIngredients,
        undeliverableIngredients: undeliverableIngredients,
      );
}
