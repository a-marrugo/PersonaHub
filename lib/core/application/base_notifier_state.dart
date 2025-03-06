import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_notifier_state.freezed.dart';

/// Handle states for notifier when user use wants to handle some data execution
///
/// `T` -> Value to be returned on data state
@freezed
abstract class BaseNotifierState<T> with _$BaseNotifierState<T> {
  /// Initial State
  const factory BaseNotifierState.initial() = _BaseNotifierStateInitial<T>;

  /// Loading initial data State
  const factory BaseNotifierState.loading() = _BaseNotifierStateLoading<T>;

  /// Data obtained from pagination
  const factory BaseNotifierState.data(T data) = _BaseNotifierStateData<T>;

  /// Error obtained data
  const factory BaseNotifierState.error(
    Object error,
    StackTrace stackTrace,
  ) = _BaseNotifierStateError<T>;

  /// Guard to handle data from async function
  static Future<BaseNotifierState<T>> guard<T>(
    Future<T> Function() future,
  ) async {
    try {
      final response = await future();
      return BaseNotifierState.data(response);
    } catch (err, stack) {
      return BaseNotifierState.error(err, stack);
    }
  }
}
