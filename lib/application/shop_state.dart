import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tunzaa_market_place_challenge/domain/core/tunzaa_failures.dart';
import 'package:tunzaa_market_place_challenge/domain/models/shopping_item_model.dart';

part 'shop_state.freezed.dart';

@freezed
abstract class ShopState with _$ShopState {
  const factory ShopState({
    @Default([]) List<ShoppingItemModel> item,
    @Default(true) bool isLoading,
    TunzaaFailures? failures,
  }) = _ShopState;

  const ShopState._();
}
