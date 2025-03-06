import 'package:personal_hub/core/domain/entities/base_data.dart';
import 'package:personal_hub/features/sign_up/domain/entities/user.dart';

/// Abstract class that defines the operations for interacting with user data.
/// It includes methods to save, retrieve, and clear user information.
abstract class UserRepository {
  /// Saves the user information.
  Future<BaseData<bool>> saveUser({
    required String name,
    required String lastName,
    required DateTime birthday,
  });

  /// Retrieves the user information.
  Future<BaseData<User?>> getUser();

  /// Clears the current user information.
  Future<void> clearUser();
}
