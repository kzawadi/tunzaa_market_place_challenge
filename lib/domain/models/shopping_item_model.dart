import 'package:freezed_annotation/freezed_annotation.dart';

part 'shopping_item_model.freezed.dart';
part 'shopping_item_model.g.dart';

@freezed
class ShoppingItemModel with _$ShoppingItemModel {
  factory ShoppingItemModel({
    int? id,
    String? title,
    double? price,
    String? image,
    @Default(false) bool inCart,
  }) = _ShoppingItemModel;
  factory ShoppingItemModel.fromJson(Map<String, dynamic> json) =>
      _$ShoppingItemModelFromJson(json);
}
