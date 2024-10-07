import 'package:mobile_developer_test/core/helpers/networking/networking.dart';
import 'package:mobile_developer_test/features/recipes/data/datasources/recipes_remote_data_source/recipes_remote_data_source.dart';
import 'package:mobile_developer_test/features/recipes/data/models/recipes_model.dart';
import 'package:mobile_developer_test/features/recipes/domain/entities/recipes.dart';
import 'package:mobile_developer_test/features/recipes/domain/repositories/i_recipes_repository.dart';

class RecipesRepository extends IRecipesRepository {
  final IRecipesRemoteDataSource _remoteDataSource;
  RecipesRepository(this._remoteDataSource);

  @override
  Future<Result<List<Recipes>>> getRecipes() async {
    return await CallerDataHandler.call(() async {
      var recipesModel = await _remoteDataSource.getRecipes();
      List<Recipes> recipes = recipesModel.map((e) => e.toEntity()).toList();
      return recipes;
    });
  }
}
