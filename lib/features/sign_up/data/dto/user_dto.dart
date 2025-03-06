import 'package:hive/hive.dart';

part 'user_dto.g.dart';

@HiveType(typeId: 0)
class UserDTO extends HiveObject {
  @HiveField(0)
  final String? name;

  @HiveField(1)
  final String? lastName;

  @HiveField(2)
  final DateTime? birthday;

  UserDTO({this.name, this.lastName, this.birthday});
}
