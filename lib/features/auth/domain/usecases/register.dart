import 'package:mobile_developer_test/core/helpers/networking/networking.dart';
import 'package:mobile_developer_test/features/auth/data/models/auth_request.dart';
import 'package:mobile_developer_test/features/auth/domain/entities/user.dart';
import 'package:mobile_developer_test/features/auth/domain/repositories/i_auth_repository.dart';

class Register {
  final IAuthRepository authRepository;

  Register(this.authRepository);
  Future<Result<User>> call(AuthRequest request) async {
    return await authRepository.register(request);
  }
}
