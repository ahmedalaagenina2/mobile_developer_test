import 'package:mobile_developer_test/core/helpers/networking/networking.dart';
import 'package:mobile_developer_test/features/recipes/domain/entities/recipes.dart';

abstract class IRecipesRepository {
  Future<Result<List<Recipes>>> getRecipes();
}
