// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_notifier_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BaseNotifierState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BaseNotifierStateInitial<T> value) initial,
    required TResult Function(_BaseNotifierStateLoading<T> value) loading,
    required TResult Function(_BaseNotifierStateData<T> value) data,
    required TResult Function(_BaseNotifierStateError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BaseNotifierStateInitial<T> value)? initial,
    TResult? Function(_BaseNotifierStateLoading<T> value)? loading,
    TResult? Function(_BaseNotifierStateData<T> value)? data,
    TResult? Function(_BaseNotifierStateError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BaseNotifierStateInitial<T> value)? initial,
    TResult Function(_BaseNotifierStateLoading<T> value)? loading,
    TResult Function(_BaseNotifierStateData<T> value)? data,
    TResult Function(_BaseNotifierStateError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseNotifierStateCopyWith<T, $Res> {
  factory $BaseNotifierStateCopyWith(BaseNotifierState<T> value,
          $Res Function(BaseNotifierState<T>) then) =
      _$BaseNotifierStateCopyWithImpl<T, $Res, BaseNotifierState<T>>;
}

/// @nodoc
class _$BaseNotifierStateCopyWithImpl<T, $Res,
        $Val extends BaseNotifierState<T>>
    implements $BaseNotifierStateCopyWith<T, $Res> {
  _$BaseNotifierStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BaseNotifierStateInitialImplCopyWith<T, $Res> {
  factory _$$BaseNotifierStateInitialImplCopyWith(
          _$BaseNotifierStateInitialImpl<T> value,
          $Res Function(_$BaseNotifierStateInitialImpl<T>) then) =
      __$$BaseNotifierStateInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$BaseNotifierStateInitialImplCopyWithImpl<T, $Res>
    extends _$BaseNotifierStateCopyWithImpl<T, $Res,
        _$BaseNotifierStateInitialImpl<T>>
    implements _$$BaseNotifierStateInitialImplCopyWith<T, $Res> {
  __$$BaseNotifierStateInitialImplCopyWithImpl(
      _$BaseNotifierStateInitialImpl<T> _value,
      $Res Function(_$BaseNotifierStateInitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BaseNotifierStateInitialImpl<T>
    implements _BaseNotifierStateInitial<T> {
  const _$BaseNotifierStateInitialImpl();

  @override
  String toString() {
    return 'BaseNotifierState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseNotifierStateInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BaseNotifierStateInitial<T> value) initial,
    required TResult Function(_BaseNotifierStateLoading<T> value) loading,
    required TResult Function(_BaseNotifierStateData<T> value) data,
    required TResult Function(_BaseNotifierStateError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BaseNotifierStateInitial<T> value)? initial,
    TResult? Function(_BaseNotifierStateLoading<T> value)? loading,
    TResult? Function(_BaseNotifierStateData<T> value)? data,
    TResult? Function(_BaseNotifierStateError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BaseNotifierStateInitial<T> value)? initial,
    TResult Function(_BaseNotifierStateLoading<T> value)? loading,
    TResult Function(_BaseNotifierStateData<T> value)? data,
    TResult Function(_BaseNotifierStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _BaseNotifierStateInitial<T> implements BaseNotifierState<T> {
  const factory _BaseNotifierStateInitial() = _$BaseNotifierStateInitialImpl<T>;
}

/// @nodoc
abstract class _$$BaseNotifierStateLoadingImplCopyWith<T, $Res> {
  factory _$$BaseNotifierStateLoadingImplCopyWith(
          _$BaseNotifierStateLoadingImpl<T> value,
          $Res Function(_$BaseNotifierStateLoadingImpl<T>) then) =
      __$$BaseNotifierStateLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$BaseNotifierStateLoadingImplCopyWithImpl<T, $Res>
    extends _$BaseNotifierStateCopyWithImpl<T, $Res,
        _$BaseNotifierStateLoadingImpl<T>>
    implements _$$BaseNotifierStateLoadingImplCopyWith<T, $Res> {
  __$$BaseNotifierStateLoadingImplCopyWithImpl(
      _$BaseNotifierStateLoadingImpl<T> _value,
      $Res Function(_$BaseNotifierStateLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BaseNotifierStateLoadingImpl<T>
    implements _BaseNotifierStateLoading<T> {
  const _$BaseNotifierStateLoadingImpl();

  @override
  String toString() {
    return 'BaseNotifierState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseNotifierStateLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BaseNotifierStateInitial<T> value) initial,
    required TResult Function(_BaseNotifierStateLoading<T> value) loading,
    required TResult Function(_BaseNotifierStateData<T> value) data,
    required TResult Function(_BaseNotifierStateError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BaseNotifierStateInitial<T> value)? initial,
    TResult? Function(_BaseNotifierStateLoading<T> value)? loading,
    TResult? Function(_BaseNotifierStateData<T> value)? data,
    TResult? Function(_BaseNotifierStateError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BaseNotifierStateInitial<T> value)? initial,
    TResult Function(_BaseNotifierStateLoading<T> value)? loading,
    TResult Function(_BaseNotifierStateData<T> value)? data,
    TResult Function(_BaseNotifierStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _BaseNotifierStateLoading<T> implements BaseNotifierState<T> {
  const factory _BaseNotifierStateLoading() = _$BaseNotifierStateLoadingImpl<T>;
}

/// @nodoc
abstract class _$$BaseNotifierStateDataImplCopyWith<T, $Res> {
  factory _$$BaseNotifierStateDataImplCopyWith(
          _$BaseNotifierStateDataImpl<T> value,
          $Res Function(_$BaseNotifierStateDataImpl<T>) then) =
      __$$BaseNotifierStateDataImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$BaseNotifierStateDataImplCopyWithImpl<T, $Res>
    extends _$BaseNotifierStateCopyWithImpl<T, $Res,
        _$BaseNotifierStateDataImpl<T>>
    implements _$$BaseNotifierStateDataImplCopyWith<T, $Res> {
  __$$BaseNotifierStateDataImplCopyWithImpl(
      _$BaseNotifierStateDataImpl<T> _value,
      $Res Function(_$BaseNotifierStateDataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$BaseNotifierStateDataImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$BaseNotifierStateDataImpl<T> implements _BaseNotifierStateData<T> {
  const _$BaseNotifierStateDataImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'BaseNotifierState<$T>.data(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseNotifierStateDataImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseNotifierStateDataImplCopyWith<T, _$BaseNotifierStateDataImpl<T>>
      get copyWith => __$$BaseNotifierStateDataImplCopyWithImpl<T,
          _$BaseNotifierStateDataImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BaseNotifierStateInitial<T> value) initial,
    required TResult Function(_BaseNotifierStateLoading<T> value) loading,
    required TResult Function(_BaseNotifierStateData<T> value) data,
    required TResult Function(_BaseNotifierStateError<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BaseNotifierStateInitial<T> value)? initial,
    TResult? Function(_BaseNotifierStateLoading<T> value)? loading,
    TResult? Function(_BaseNotifierStateData<T> value)? data,
    TResult? Function(_BaseNotifierStateError<T> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BaseNotifierStateInitial<T> value)? initial,
    TResult Function(_BaseNotifierStateLoading<T> value)? loading,
    TResult Function(_BaseNotifierStateData<T> value)? data,
    TResult Function(_BaseNotifierStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _BaseNotifierStateData<T> implements BaseNotifierState<T> {
  const factory _BaseNotifierStateData(final T data) =
      _$BaseNotifierStateDataImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$BaseNotifierStateDataImplCopyWith<T, _$BaseNotifierStateDataImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BaseNotifierStateErrorImplCopyWith<T, $Res> {
  factory _$$BaseNotifierStateErrorImplCopyWith(
          _$BaseNotifierStateErrorImpl<T> value,
          $Res Function(_$BaseNotifierStateErrorImpl<T>) then) =
      __$$BaseNotifierStateErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$BaseNotifierStateErrorImplCopyWithImpl<T, $Res>
    extends _$BaseNotifierStateCopyWithImpl<T, $Res,
        _$BaseNotifierStateErrorImpl<T>>
    implements _$$BaseNotifierStateErrorImplCopyWith<T, $Res> {
  __$$BaseNotifierStateErrorImplCopyWithImpl(
      _$BaseNotifierStateErrorImpl<T> _value,
      $Res Function(_$BaseNotifierStateErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$BaseNotifierStateErrorImpl<T>(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$BaseNotifierStateErrorImpl<T> implements _BaseNotifierStateError<T> {
  const _$BaseNotifierStateErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'BaseNotifierState<$T>.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseNotifierStateErrorImpl<T> &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseNotifierStateErrorImplCopyWith<T, _$BaseNotifierStateErrorImpl<T>>
      get copyWith => __$$BaseNotifierStateErrorImplCopyWithImpl<T,
          _$BaseNotifierStateErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BaseNotifierStateInitial<T> value) initial,
    required TResult Function(_BaseNotifierStateLoading<T> value) loading,
    required TResult Function(_BaseNotifierStateData<T> value) data,
    required TResult Function(_BaseNotifierStateError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BaseNotifierStateInitial<T> value)? initial,
    TResult? Function(_BaseNotifierStateLoading<T> value)? loading,
    TResult? Function(_BaseNotifierStateData<T> value)? data,
    TResult? Function(_BaseNotifierStateError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BaseNotifierStateInitial<T> value)? initial,
    TResult Function(_BaseNotifierStateLoading<T> value)? loading,
    TResult Function(_BaseNotifierStateData<T> value)? data,
    TResult Function(_BaseNotifierStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _BaseNotifierStateError<T> implements BaseNotifierState<T> {
  const factory _BaseNotifierStateError(
          final Object error, final StackTrace stackTrace) =
      _$BaseNotifierStateErrorImpl<T>;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$BaseNotifierStateErrorImplCopyWith<T, _$BaseNotifierStateErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
