// ignore_for_file: public_member_api_docs

import 'package:hive/hive.dart';

part 'user_dto.g.dart';

/// A Hive-compatible data transfer object (DTO) for storing user information.
@HiveType(typeId: 0)
class UserDTO extends HiveObject {
  UserDTO({this.name, this.lastName, this.birthday});
  @HiveField(0)
  final String? name;

  @HiveField(1)
  final String? lastName;

  @HiveField(2)
  final DateTime? birthday;
}
