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

// @JsonSerializable()
// class ShoppingItemModel {
//   int? id;
//   String? title;
//   double? price;
//   String? description;
//   String? category;
//   String? image;
//   @JsonKey(ignore: true)
//   double count = 0;
//   @JsonKey(ignore: true)
//   double productPrice = 1;
//   @JsonKey(ignore: true)
//   @Default(true)
//   bool incart = true;

//   ShoppingItemModel({
//     this.id,
//     this.title,
//     this.price,
//     this.description,
//     this.category,
//     this.image,
//   });

//   factory ShoppingItemModel.fromJson(Map<String, dynamic> json) =>
//       _$ShoppingItemModelFromJson(json);

//   Map<String, dynamic> toJson() => _$ShoppingItemModelToJson(this);

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is ShoppingItemModel &&
//         other.title == title &&
//         other.id == id &&
//         other.description == description &&
//         other.category == category &&
//         other.price == price &&
//         other.image == image;
//   }

//   @override
//   int get hashCode {
//     return title.hashCode ^
//         id.hashCode ^
//         description.hashCode ^
//         category.hashCode ^
//         image.hashCode ^
//         price.hashCode;
//   }
// }
