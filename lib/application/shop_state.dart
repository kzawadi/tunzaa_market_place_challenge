import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tunzaa_market_place_challenge/domain/core/tunzaa_failures.dart';
import 'package:tunzaa_market_place_challenge/domain/models/shopping_item_model.dart';

part 'shop_state.freezed.dart';

@freezed
class ShopState with _$ShopState {
  const factory ShopState.loading() = _loading;
  const factory ShopState.onData({required List<ShoppingItemModel> items}) =
      _onData;
  const factory ShopState.onError(TunzaaFailures failures) = _onError;
}
