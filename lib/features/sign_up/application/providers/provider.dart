import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_hub/core/application/base_notifier.dart';
import 'package:personal_hub/core/application/base_notifier_state.dart';
import 'package:personal_hub/core/di/di.dart';
import 'package:personal_hub/core/domain/entities/base_data.dart';
import 'package:personal_hub/features/sign_up/domain/entities/user.dart';
import 'package:personal_hub/features/sign_up/domain/use_cases/save_user_use_case.dart';

/// Provider to handle the user data to register
final userRegisterProvider = StateProvider<User>(
  (_) => const User(),
);

final registerUserNotifier = StateNotifierProvider<
    BaseNotifier<BaseData<bool>, User, SaveUserUseCase>,
    BaseNotifierState<BaseData<bool>>>(
  (_) => BaseNotifier(getIt<SaveUserUseCase>()),
);
