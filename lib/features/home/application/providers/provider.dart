import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_hub/core/application/base_notifier.dart';
import 'package:personal_hub/core/application/base_notifier_state.dart';
import 'package:personal_hub/core/di/di.dart';
import 'package:personal_hub/core/domain/entities/base_data.dart';
import 'package:personal_hub/features/home/domain/use_cases/get_user_use_case.dart';
import 'package:personal_hub/features/sign_up/domain/entities/user.dart';

/// A `StateNotifierProvider` responsible for managing the
/// state of user information.
final getUserNotifier = StateNotifierProvider<
    BaseNotifier<BaseData<User?>, void, GetUserUseCase>,
    BaseNotifierState<BaseData<User?>>>(
  (_) => BaseNotifier(getIt<GetUserUseCase>()),
);
