import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipes.freezed.dart';

@freezed
class Recipes with _$Recipes {
  const factory Recipes({
    String? id,
    String? fats,
    String? name,
    String? image,
    String? carbos,
    String? fibers,
    double? rating,
    String? country,
    double? ratings,
    String? calories,
    String? headline,
    List<String>? products,
    String? proteins,
    int? favorites,
    int? difficulty,
    String? description,
    List<String>? ingredients,
    List<String>? deliverableIngredients,
    List<String>? undeliverableIngredients,
    @Default(false)
    bool isFavourite,
  }) = _Recipes;
}
