import 'package:injectable/injectable.dart';
import 'package:personal_hub/core/domain/entities/base_data.dart';
import 'package:personal_hub/features/sign_up/data/data_sources/loca_services/local_storage_service.dart';
import 'package:personal_hub/features/sign_up/data/mappers/mapper_domain.dart';
import 'package:personal_hub/features/sign_up/domain/entities/user.dart';
import 'package:personal_hub/features/sign_up/domain/repositories/user_repository.dart';

/// Implementation of [QrRepository] that interacts with the QR scanning API.
@Injectable(as: UserRepository)
class UserRepositoryImpl extends UserRepository {
  UserRepositoryImpl(this._localStorageService);

  final LocalStorageService _localStorageService;
  @override
  Future<void> clearUser() async {
    await _localStorageService.clearUser();
  }

  @override
  Future<BaseData<User?>> getUser() async {
    final response = await _localStorageService.getUser();
    return BaseData(data: response.data?.toDomain);
  }

  @override
  Future<BaseData<bool>> saveUser({
    required String name,
    required String lastName,
    required DateTime birthday,
  }) async {
    final response = await _localStorageService.saveUser(
      name: name,
      lastName: lastName,
      birthday: birthday,
    );
    return response.toDomain;
  }
}
