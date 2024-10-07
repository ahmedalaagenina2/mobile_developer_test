import 'package:mobile_developer_test/core/helpers/networking/networking.dart';
import 'package:mobile_developer_test/features/auth/data/models/auth_request.dart';
import 'package:mobile_developer_test/features/auth/domain/entities/user.dart';

abstract class IAuthRepository {
  Future<Result<User>> login(AuthRequest request);
  Future<Result<User>> register(AuthRequest request);
}
