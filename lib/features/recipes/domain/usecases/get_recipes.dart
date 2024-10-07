import 'package:mobile_developer_test/core/helpers/networking/networking.dart';
import 'package:mobile_developer_test/features/recipes/domain/entities/recipes.dart';
import 'package:mobile_developer_test/features/recipes/domain/repositories/i_recipes_repository.dart';

class  GetRecipes {
  final IRecipesRepository repository;
  GetRecipes(this.repository);

  Future<Result<List<Recipes>>> call() async {
    return await repository.getRecipes();
  }
}
