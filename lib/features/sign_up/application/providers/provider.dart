import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_hub/features/sign_up/domain/entities/user.dart';

/// Provider to handle the user data to register
final userRegisterProvider = StateProvider<User>(
  (_) => const User(),
);
