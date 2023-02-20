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
  List<ShoppingItemModel> get item => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<TunzaaFailures> get failures => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopStateCopyWith<ShopState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopStateCopyWith<$Res> {
  factory $ShopStateCopyWith(ShopState value, $Res Function(ShopState) then) =
      _$ShopStateCopyWithImpl<$Res, ShopState>;
  @useResult
  $Res call(
      {List<ShoppingItemModel> item,
      bool isLoading,
      Option<TunzaaFailures> failures});
}

/// @nodoc
class _$ShopStateCopyWithImpl<$Res, $Val extends ShopState>
    implements $ShopStateCopyWith<$Res> {
  _$ShopStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? isLoading = null,
    Object? failures = null,
  }) {
    return _then(_value.copyWith(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as List<ShoppingItemModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failures: null == failures
          ? _value.failures
          : failures // ignore: cast_nullable_to_non_nullable
              as Option<TunzaaFailures>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShopStateCopyWith<$Res> implements $ShopStateCopyWith<$Res> {
  factory _$$_ShopStateCopyWith(
          _$_ShopState value, $Res Function(_$_ShopState) then) =
      __$$_ShopStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ShoppingItemModel> item,
      bool isLoading,
      Option<TunzaaFailures> failures});
}

/// @nodoc
class __$$_ShopStateCopyWithImpl<$Res>
    extends _$ShopStateCopyWithImpl<$Res, _$_ShopState>
    implements _$$_ShopStateCopyWith<$Res> {
  __$$_ShopStateCopyWithImpl(
      _$_ShopState _value, $Res Function(_$_ShopState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? isLoading = null,
    Object? failures = null,
  }) {
    return _then(_$_ShopState(
      item: null == item
          ? _value._item
          : item // ignore: cast_nullable_to_non_nullable
              as List<ShoppingItemModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failures: null == failures
          ? _value.failures
          : failures // ignore: cast_nullable_to_non_nullable
              as Option<TunzaaFailures>,
    ));
  }
}

/// @nodoc

class _$_ShopState implements _ShopState {
  const _$_ShopState(
      {final List<ShoppingItemModel> item = const [],
      this.isLoading = true,
      required this.failures})
      : _item = item;

  final List<ShoppingItemModel> _item;
  @override
  @JsonKey()
  List<ShoppingItemModel> get item {
    if (_item is EqualUnmodifiableListView) return _item;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_item);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Option<TunzaaFailures> failures;

  @override
  String toString() {
    return 'ShopState(item: $item, isLoading: $isLoading, failures: $failures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopState &&
            const DeepCollectionEquality().equals(other._item, _item) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failures, failures) ||
                other.failures == failures));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_item), isLoading, failures);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopStateCopyWith<_$_ShopState> get copyWith =>
      __$$_ShopStateCopyWithImpl<_$_ShopState>(this, _$identity);
}

abstract class _ShopState implements ShopState {
  const factory _ShopState(
      {final List<ShoppingItemModel> item,
      final bool isLoading,
      required final Option<TunzaaFailures> failures}) = _$_ShopState;

  @override
  List<ShoppingItemModel> get item;
  @override
  bool get isLoading;
  @override
  Option<TunzaaFailures> get failures;
  @override
  @JsonKey(ignore: true)
  _$$_ShopStateCopyWith<_$_ShopState> get copyWith =>
      throw _privateConstructorUsedError;
}
