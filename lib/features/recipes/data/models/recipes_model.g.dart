// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipesModelImpl _$$RecipesModelImplFromJson(Map<String, dynamic> json) =>
    _$RecipesModelImpl(
      id: json['id'] as String?,
      fats: json['fats'] as String?,
      name: json['name'] as String?,
      time: json['time'] as String?,
      image: json['image'] as String?,
      weeks:
          (json['weeks'] as List<dynamic>?)?.map((e) => e as String).toList(),
      carbos: json['carbos'] as String?,
      fibers: json['fibers'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      country: json['country'] as String?,
      ratings: (json['ratings'] as num?)?.toDouble(),
      calories: json['calories'] as String?,
      headline: json['headline'] as String?,
      keywords: (json['keywords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      proteins: json['proteins'] as String?,
      favorites: (json['favorites'] as num?)?.toInt(),
      difficulty: (json['difficulty'] as num?)?.toInt(),
      description: json['description'] as String?,
      highlighted: json['highlighted'] as bool?,
      ingredients: (json['ingredients'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      deliverableIngredients:
          (json['deliverable_ingredients'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      undeliverableIngredients:
          (json['undeliverable_ingredients'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$$RecipesModelImplToJson(_$RecipesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fats': instance.fats,
      'name': instance.name,
      'time': instance.time,
      'image': instance.image,
      'weeks': instance.weeks,
      'carbos': instance.carbos,
      'fibers': instance.fibers,
      'rating': instance.rating,
      'country': instance.country,
      'ratings': instance.ratings,
      'calories': instance.calories,
      'headline': instance.headline,
      'keywords': instance.keywords,
      'products': instance.products,
      'proteins': instance.proteins,
      'favorites': instance.favorites,
      'difficulty': instance.difficulty,
      'description': instance.description,
      'highlighted': instance.highlighted,
      'ingredients': instance.ingredients,
      'deliverable_ingredients': instance.deliverableIngredients,
      'undeliverable_ingredients': instance.undeliverableIngredients,
    };
