import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:personal_hub/core/data/dtos/base_data_dto.dart';
import 'package:personal_hub/features/sign_up/data/dto/user_dto.dart';

/// A service for managing local storage using Hive.
abstract class LocalStorageService {
  /// - `saveUser()`: Saves user data locally.
  Future<BaseDataDTO<bool>> saveUser({
    required String name,
    required String lastName,
    required DateTime birthday,
  });

  /// - `getUser()`: Retrieves stored user data.
  Future<BaseDataDTO<UserDTO?>> getUser();

  /// - `clearUser()`: Deletes stored user data.
  Future<void> clearUser();
}

@Injectable(as: LocalStorageService)

/// `LocalStorageServiceImpl` implements `LocalStorageService` and handles
/// user data persistence with Hive.
class LocalStorageServiceImpl implements LocalStorageService {
  static const String _userBox = 'userBox';
  static const String _userKey = 'user_data';

  @override
  Future<void> clearUser() async {
    final box = await Hive.openBox<UserDTO>(_userBox);
    await box.clear();
  }

  @override
  Future<BaseDataDTO<UserDTO?>> getUser() async {
    final box = await Hive.openBox<UserDTO>(_userBox);
    final user = box.get(_userKey);
    return BaseDataDTO<UserDTO?>(data: user);
  }

  @override
  Future<BaseDataDTO<bool>> saveUser({
    required String name,
    required String lastName,
    required DateTime birthday,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 1100));

    final dataUser =
        UserDTO(name: name, lastName: lastName, birthday: birthday);
    final box = await Hive.openBox<UserDTO>(_userBox);
    await box.put(_userKey, dataUser);
    return const BaseDataDTO<bool>(data: true);
  }
}
