// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShopState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ShoppingItemModel> items) onData,
    required TResult Function(TunzaaFailures failures) onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ShoppingItemModel> items)? onData,
    TResult? Function(TunzaaFailures failures)? onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ShoppingItemModel> items)? onData,
    TResult Function(TunzaaFailures failures)? onError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loading value) loading,
    required TResult Function(_onData value) onData,
    required TResult Function(_onError value) onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loading value)? loading,
    TResult? Function(_onData value)? onData,
    TResult? Function(_onError value)? onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_onData value)? onData,
    TResult Function(_onError value)? onError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopStateCopyWith<$Res> {
  factory $ShopStateCopyWith(ShopState value, $Res Function(ShopState) then) =
      _$ShopStateCopyWithImpl<$Res, ShopState>;
}

/// @nodoc
class _$ShopStateCopyWithImpl<$Res, $Val extends ShopState>
    implements $ShopStateCopyWith<$Res> {
  _$ShopStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_loadingCopyWith<$Res> {
  factory _$$_loadingCopyWith(
          _$_loading value, $Res Function(_$_loading) then) =
      __$$_loadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_loadingCopyWithImpl<$Res>
    extends _$ShopStateCopyWithImpl<$Res, _$_loading>
    implements _$$_loadingCopyWith<$Res> {
  __$$_loadingCopyWithImpl(_$_loading _value, $Res Function(_$_loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_loading implements _loading {
  const _$_loading();

  @override
  String toString() {
    return 'ShopState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ShoppingItemModel> items) onData,
    required TResult Function(TunzaaFailures failures) onError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ShoppingItemModel> items)? onData,
    TResult? Function(TunzaaFailures failures)? onError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ShoppingItemModel> items)? onData,
    TResult Function(TunzaaFailures failures)? onError,
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
    required TResult Function(_loading value) loading,
    required TResult Function(_onData value) onData,
    required TResult Function(_onError value) onError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loading value)? loading,
    TResult? Function(_onData value)? onData,
    TResult? Function(_onError value)? onError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_onData value)? onData,
    TResult Function(_onError value)? onError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading implements ShopState {
  const factory _loading() = _$_loading;
}

/// @nodoc
abstract class _$$_onDataCopyWith<$Res> {
  factory _$$_onDataCopyWith(_$_onData value, $Res Function(_$_onData) then) =
      __$$_onDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ShoppingItemModel> items});
}

/// @nodoc
class __$$_onDataCopyWithImpl<$Res>
    extends _$ShopStateCopyWithImpl<$Res, _$_onData>
    implements _$$_onDataCopyWith<$Res> {
  __$$_onDataCopyWithImpl(_$_onData _value, $Res Function(_$_onData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$_onData(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ShoppingItemModel>,
    ));
  }
}

/// @nodoc

class _$_onData implements _onData {
  const _$_onData({required final List<ShoppingItemModel> items})
      : _items = items;

  final List<ShoppingItemModel> _items;
  @override
  List<ShoppingItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ShopState.onData(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_onData &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_onDataCopyWith<_$_onData> get copyWith =>
      __$$_onDataCopyWithImpl<_$_onData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ShoppingItemModel> items) onData,
    required TResult Function(TunzaaFailures failures) onError,
  }) {
    return onData(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ShoppingItemModel> items)? onData,
    TResult? Function(TunzaaFailures failures)? onError,
  }) {
    return onData?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ShoppingItemModel> items)? onData,
    TResult Function(TunzaaFailures failures)? onError,
    required TResult orElse(),
  }) {
    if (onData != null) {
      return onData(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loading value) loading,
    required TResult Function(_onData value) onData,
    required TResult Function(_onError value) onError,
  }) {
    return onData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loading value)? loading,
    TResult? Function(_onData value)? onData,
    TResult? Function(_onError value)? onError,
  }) {
    return onData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_onData value)? onData,
    TResult Function(_onError value)? onError,
    required TResult orElse(),
  }) {
    if (onData != null) {
      return onData(this);
    }
    return orElse();
  }
}

abstract class _onData implements ShopState {
  const factory _onData({required final List<ShoppingItemModel> items}) =
      _$_onData;

  List<ShoppingItemModel> get items;
  @JsonKey(ignore: true)
  _$$_onDataCopyWith<_$_onData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_onErrorCopyWith<$Res> {
  factory _$$_onErrorCopyWith(
          _$_onError value, $Res Function(_$_onError) then) =
      __$$_onErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({TunzaaFailures failures});

  $TunzaaFailuresCopyWith<$Res> get failures;
}

/// @nodoc
class __$$_onErrorCopyWithImpl<$Res>
    extends _$ShopStateCopyWithImpl<$Res, _$_onError>
    implements _$$_onErrorCopyWith<$Res> {
  __$$_onErrorCopyWithImpl(_$_onError _value, $Res Function(_$_onError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failures = null,
  }) {
    return _then(_$_onError(
      null == failures
          ? _value.failures
          : failures // ignore: cast_nullable_to_non_nullable
              as TunzaaFailures,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TunzaaFailuresCopyWith<$Res> get failures {
    return $TunzaaFailuresCopyWith<$Res>(_value.failures, (value) {
      return _then(_value.copyWith(failures: value));
    });
  }
}

/// @nodoc

class _$_onError implements _onError {
  const _$_onError(this.failures);

  @override
  final TunzaaFailures failures;

  @override
  String toString() {
    return 'ShopState.onError(failures: $failures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_onError &&
            (identical(other.failures, failures) ||
                other.failures == failures));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failures);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_onErrorCopyWith<_$_onError> get copyWith =>
      __$$_onErrorCopyWithImpl<_$_onError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ShoppingItemModel> items) onData,
    required TResult Function(TunzaaFailures failures) onError,
  }) {
    return onError(failures);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ShoppingItemModel> items)? onData,
    TResult? Function(TunzaaFailures failures)? onError,
  }) {
    return onError?.call(failures);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ShoppingItemModel> items)? onData,
    TResult Function(TunzaaFailures failures)? onError,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(failures);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_loading value) loading,
    required TResult Function(_onData value) onData,
    required TResult Function(_onError value) onError,
  }) {
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_loading value)? loading,
    TResult? Function(_onData value)? onData,
    TResult? Function(_onError value)? onError,
  }) {
    return onError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_loading value)? loading,
    TResult Function(_onData value)? onData,
    TResult Function(_onError value)? onError,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class _onError implements ShopState {
  const factory _onError(final TunzaaFailures failures) = _$_onError;

  TunzaaFailures get failures;
  @JsonKey(ignore: true)
  _$$_onErrorCopyWith<_$_onError> get copyWith =>
      throw _privateConstructorUsedError;
}
