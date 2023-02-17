import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_state.freezed.dart';

@freezed
class ShopState with _$ShopState {
  const factory ShopState.initial() = _initial;
  const factory ShopState.onData() = _onData;
  const factory ShopState.onError() = _onError;
}
