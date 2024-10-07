import 'package:mobile_developer_test/core/helpers/networking/error/error.dart';
import 'package:mobile_developer_test/core/helpers/networking/networking.dart';
import 'package:mobile_developer_test/features/recipes/data/models/recipes_model.dart';

abstract class IRecipesRemoteDataSource {
  Future<List<RecipesModel>> getRecipes();
}

class RecipesRemoteDataSource implements IRecipesRemoteDataSource {
  final ApiService _apiService;

  RecipesRemoteDataSource(this._apiService);

  @override
  Future<List<RecipesModel>> getRecipes() async {
    try {
      final response = await _apiService.get(ApiConstant.recipes);
      if (response.statusCode == 200) {
        final List decodedJson = response.data;
        final List<RecipesModel> postModels = decodedJson
            .map<RecipesModel>(
                (jsonPostModel) => RecipesModel.fromJson(jsonPostModel))
            .toList();
        return postModels;
      } else {
        throw ServerException(
            message: response.statusMessage ?? 'Response != 200');
      }
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
