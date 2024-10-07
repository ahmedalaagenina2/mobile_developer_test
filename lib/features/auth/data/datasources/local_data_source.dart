import 'package:mobile_developer_test/core/helpers/helpers.dart';
import 'package:mobile_developer_test/core/helpers/networking/error/error.dart';
import 'package:mobile_developer_test/features/auth/data/models/auth_request.dart';
import 'package:mobile_developer_test/features/auth/data/models/user_model.dart';

abstract class IAuthLocalDataSource {
  Future<UserModel> login(AuthRequest request);
  Future<UserModel> register(AuthRequest request);
}

class AuthLocalDataSource implements IAuthLocalDataSource {
  final DatabaseHelper db;

  AuthLocalDataSource(this.db);
  @override
  Future<UserModel> login(AuthRequest request) async {
    try {
      final existingUser = await db.getUser(request);
      if (existingUser != null) {
        return existingUser;
      } else {
        throw ("Invalid email or password!");
      }
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  @override
  Future<UserModel> register(AuthRequest request) async {
    try {
      // Check if the user already exists
      UserModel? existingUser = await db.getUserByEmail(request.email);
      if (existingUser != null) throw ("User already exists!");
      // Create new user and insert into the database
      UserModel? response = await db.insertUser(request);
      if (response == null) throw ("Registration failed!");
      return response;
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }
}
