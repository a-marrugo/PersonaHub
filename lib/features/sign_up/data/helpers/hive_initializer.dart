import 'package:hive_flutter/hive_flutter.dart';
import 'package:personal_hub/features/sign_up/data/dto/user_dto.dart';

class HiveInitializer {
  static Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(UserDTOAdapter());
  }
}
