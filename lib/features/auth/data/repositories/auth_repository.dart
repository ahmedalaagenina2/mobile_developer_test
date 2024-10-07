import 'package:mobile_developer_test/core/helpers/networking/networking.dart';
import 'package:mobile_developer_test/features/auth/data/datasources/local_data_source.dart';
import 'package:mobile_developer_test/features/auth/data/models/auth_request.dart';
import 'package:mobile_developer_test/features/auth/data/models/user_model.dart';
import 'package:mobile_developer_test/features/auth/domain/entities/user.dart';
import 'package:mobile_developer_test/features/auth/domain/repositories/i_auth_repository.dart';

class AuthRepository extends IAuthRepository {
  final IAuthLocalDataSource localDataSource;
  AuthRepository(this.localDataSource);
  @override
  Future<Result<User>> login(AuthRequest request) async {
    return await CallerDataHandler.call(
      () async {
        var response = await localDataSource.login(request);
        return response.toEntity();
      },
    );
  }

  @override
  Future<Result<User>> register(AuthRequest request) async {
    return await CallerDataHandler.call(
      () async {
        var response = await localDataSource.register(request);
        return response.toEntity();
      },
    );
  }
}
