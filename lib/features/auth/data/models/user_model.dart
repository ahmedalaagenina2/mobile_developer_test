import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_developer_test/features/auth/domain/entities/user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    required String email,
    required String fullName,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

// Extension to convert AuthResponse to User
extension UserModelX on UserModel {
  User toEntity() => User(
        id: id,
        email: email,
        fullName: fullName,
      );
}
