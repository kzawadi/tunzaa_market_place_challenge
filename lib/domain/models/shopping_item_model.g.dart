// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShoppingItemModel _$$_ShoppingItemModelFromJson(Map<String, dynamic> json) =>
    _$_ShoppingItemModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      image: json['image'] as String?,
      inCart: json['inCart'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ShoppingItemModelToJson(
        _$_ShoppingItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'image': instance.image,
      'inCart': instance.inCart,
    };
