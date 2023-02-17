// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shopping_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShoppingItemModel _$ShoppingItemModelFromJson(Map<String, dynamic> json) {
  return _ShoppingItemModel.fromJson(json);
}

/// @nodoc
mixin _$ShoppingItemModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  bool get inCart => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShoppingItemModelCopyWith<ShoppingItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingItemModelCopyWith<$Res> {
  factory $ShoppingItemModelCopyWith(
          ShoppingItemModel value, $Res Function(ShoppingItemModel) then) =
      _$ShoppingItemModelCopyWithImpl<$Res, ShoppingItemModel>;
  @useResult
  $Res call(
      {int? id, String? title, double? price, String? image, bool inCart});
}

/// @nodoc
class _$ShoppingItemModelCopyWithImpl<$Res, $Val extends ShoppingItemModel>
    implements $ShoppingItemModelCopyWith<$Res> {
  _$ShoppingItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? image = freezed,
    Object? inCart = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      inCart: null == inCart
          ? _value.inCart
          : inCart // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShoppingItemModelCopyWith<$Res>
    implements $ShoppingItemModelCopyWith<$Res> {
  factory _$$_ShoppingItemModelCopyWith(_$_ShoppingItemModel value,
          $Res Function(_$_ShoppingItemModel) then) =
      __$$_ShoppingItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, String? title, double? price, String? image, bool inCart});
}

/// @nodoc
class __$$_ShoppingItemModelCopyWithImpl<$Res>
    extends _$ShoppingItemModelCopyWithImpl<$Res, _$_ShoppingItemModel>
    implements _$$_ShoppingItemModelCopyWith<$Res> {
  __$$_ShoppingItemModelCopyWithImpl(
      _$_ShoppingItemModel _value, $Res Function(_$_ShoppingItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? image = freezed,
    Object? inCart = null,
  }) {
    return _then(_$_ShoppingItemModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      inCart: null == inCart
          ? _value.inCart
          : inCart // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShoppingItemModel implements _ShoppingItemModel {
  _$_ShoppingItemModel(
      {this.id, this.title, this.price, this.image, this.inCart = false});

  factory _$_ShoppingItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShoppingItemModelFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final double? price;
  @override
  final String? image;
  @override
  @JsonKey()
  final bool inCart;

  @override
  String toString() {
    return 'ShoppingItemModel(id: $id, title: $title, price: $price, image: $image, inCart: $inCart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShoppingItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.inCart, inCart) || other.inCart == inCart));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, price, image, inCart);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShoppingItemModelCopyWith<_$_ShoppingItemModel> get copyWith =>
      __$$_ShoppingItemModelCopyWithImpl<_$_ShoppingItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShoppingItemModelToJson(
      this,
    );
  }
}

abstract class _ShoppingItemModel implements ShoppingItemModel {
  factory _ShoppingItemModel(
      {final int? id,
      final String? title,
      final double? price,
      final String? image,
      final bool inCart}) = _$_ShoppingItemModel;

  factory _ShoppingItemModel.fromJson(Map<String, dynamic> json) =
      _$_ShoppingItemModel.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  double? get price;
  @override
  String? get image;
  @override
  bool get inCart;
  @override
  @JsonKey(ignore: true)
  _$$_ShoppingItemModelCopyWith<_$_ShoppingItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
