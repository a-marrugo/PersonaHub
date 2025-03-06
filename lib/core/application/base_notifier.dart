import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_hub/core/application/base_notifier_state.dart';
import 'package:personal_hub/core/domain/use_cases/base_use_case.dart';

/// Notifier to handle data consuming from dynamic Use Case with Params
///
/// `Entity` = Entity to get on data state
///
/// `Params` = Parameters to handle on UseCase (`UseCase`)
///
/// `UseCase` = A Use Case that extends from [BaseUseCase] class
class BaseNotifier<Entity, Params, UseCase extends BaseUseCase<Entity, Params>>
    extends StateNotifier<BaseNotifierState<Entity>> {
  /// Constructor
  BaseNotifier(this._useCase) : super(const BaseNotifierState.initial());

  // Use case that handle data using LealUseCase
  final UseCase _useCase;

  /// Get data to handle from UseCase
  Future<void> fetchData(Params params) async {
    state = const BaseNotifierState.loading();

    state = await BaseNotifierState.guard(() async => _useCase.execute(params));
  }
}
