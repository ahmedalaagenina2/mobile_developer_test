import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:mobile_developer_test/core/helpers/helpers.dart';
import 'package:mobile_developer_test/core/helpers/networking/networking.dart';
import 'package:mobile_developer_test/features/auth/data/datasources/local_data_source.dart';
import 'package:mobile_developer_test/features/auth/data/repositories/auth_repository.dart';
import 'package:mobile_developer_test/features/auth/domain/repositories/i_auth_repository.dart';
import 'package:mobile_developer_test/features/auth/domain/usecases/login.dart';
import 'package:mobile_developer_test/features/auth/domain/usecases/register.dart';
import 'package:mobile_developer_test/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:mobile_developer_test/features/recipes/data/datasources/recipes_remote_data_source/recipes_remote_data_source.dart';
import 'package:mobile_developer_test/features/recipes/data/repositories/recipes_repository.dart';
import 'package:mobile_developer_test/features/recipes/domain/repositories/i_recipes_repository.dart';
import 'package:mobile_developer_test/features/recipes/domain/usecases/get_recipes.dart';
import 'package:mobile_developer_test/features/recipes/presentation/bloc/recipes_bloc.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  //! External
  // DatabaseHelper
  getIt.registerSingleton<DatabaseHelper>(DatabaseHelper.instance);
  // NetworkInfo
  getIt.registerLazySingleton(() => InternetConnection());

  // Dio
  getIt.registerLazySingleton<Dio>(
    () => Dio(
      BaseOptions(
        baseUrl: ApiConstant.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        },
      ),
    ),
  );

  // Api service
  getIt.registerLazySingleton<ApiService>(() => ApiService(getIt()));

  //! Auth Feature
  //? Data sources
  getIt.registerLazySingleton<IAuthLocalDataSource>(
    () => AuthLocalDataSource(getIt<DatabaseHelper>()),
  );

  //? Repositories
  getIt.registerLazySingleton<IAuthRepository>(
    () => AuthRepository(getIt<IAuthLocalDataSource>()),
  );

  //? Usecases
  getIt.registerLazySingleton(() => Login(getIt<IAuthRepository>()));
  getIt.registerLazySingleton(() => Register(getIt<IAuthRepository>()));

  //? Bloc
  getIt.registerFactory(
    () => AuthBloc(getIt<Login>(), getIt<Register>()),
  );

  //! recipes feature
  //? Data sources
  getIt.registerLazySingleton<IRecipesRemoteDataSource>(
      () => RecipesRemoteDataSource(getIt()));

  //? Repositories
  getIt.registerLazySingleton<IRecipesRepository>(
      () => RecipesRepository(getIt()));

  //? Usecases
  getIt.registerLazySingleton(() => GetRecipes(getIt()));

  //? bloc
  getIt.registerFactory(() => RecipesBloc(getIt(), getIt()));
}
