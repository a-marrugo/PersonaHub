import 'package:personal_hub/core/data/dtos/base_data_dto.dart';
import 'package:personal_hub/core/domain/entities/base_data.dart';
import 'package:personal_hub/features/sign_up/data/dto/user_dto.dart';
import 'package:personal_hub/features/sign_up/domain/entities/user.dart';

/// Extension for [BaseDataDTO<UserDTO>]
extension MapperBaseDataDTOUserDTO on BaseDataDTO<UserDTO> {
  /// Convert [BaseDataDTO<UserDTO>]
  /// to [BaseData<User>]
  BaseData<User> get toDomain => BaseData<User>(data: data.toDomain);
}

/// Extension for [UserDTO]
extension MapperUserDTO on UserDTO {
  /// Convert [UserDTO] to [User]
  User get toDomain => User(
        name: name,
        lastName: lastName,
        birthday: birthday,
      );
}

/// Extension for [BaseDataDTOBool<UserDTO>]
extension MapperBaseDataDTOBool on BaseDataDTO<bool> {
  /// Convert [BaseDataDTO<bool>]
  /// to [BaseData<bool>]
  BaseData<bool> get toDomain => BaseData<bool>(data: data);
}
