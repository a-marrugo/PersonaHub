import 'package:hive_flutter/hive_flutter.dart';
import 'package:personal_hub/features/sign_up/data/dto/user_dto.dart';

/// Initializes Hive for local storage and registers adapters.

class HiveInitializer {
  /// - Calls `Hive.initFlutter()` to set up Hive for Flutter.
  /// - Registers the `UserDTOAdapter` to enable storing `UserDTO` objects.
  static Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(UserDTOAdapter());
  }
}
