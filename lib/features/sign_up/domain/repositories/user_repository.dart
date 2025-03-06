import 'package:personal_hub/core/domain/entities/base_data.dart';
import 'package:personal_hub/features/sign_up/domain/entities/user.dart';

abstract class UserRepository {
  Future<BaseData<bool>> saveUser({
    required String name,
    required String lastName,
    required DateTime birthday,
  });
  Future<BaseData<User?>> getUser();
  Future<void> clearUser();
}
