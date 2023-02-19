import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tunzaa_market_place_challenge/application/shop_state.dart';
import 'package:tunzaa_market_place_challenge/application/shopping_cart_controller.dart';
import 'package:tunzaa_market_place_challenge/domain/interfaces/shopping_interface.dart';
import 'package:tunzaa_market_place_challenge/domain/models/shopping_item_model.dart';
import 'package:tunzaa_market_place_challenge/infrastructure/shopping_service.dart';
import 'package:tunzaa_market_place_challenge/presentation/home/cart_page.dart';
import 'package:tunzaa_market_place_challenge/presentation/home/shopping_page.dart';

/// A provider to privode the product services
final shoppingServicesProviderProvider =
    Provider<ShoppingServicesInterface>((ref) {
  return ShoppingServiceImpl();
});

/// This a provider provides state data of the product catalogue
final shoppingNotifierProvider =
    StateNotifierProvider<ProductNotifier, ShopState>((ref) {
  return ProductNotifier(ref: ref);
});

final cartProvider = StateProvider<List<ShoppingItemModel>>((ref) {
  final result = ref
      .watch(shoppingNotifierProvider)
      .item
      .where((element) => element.inCart == true)
      .toList();

  return result;
});

final cartValue = StateProvider<double>((ref) {
  final cartItem = ref.watch(cartProvider);
  double value = 0;

  for (var element in cartItem) {
    value += element.price!;
  }
  return value;
});
// a map of ("page name", WidgetBuilder) pairs
final availablePages = <String, WidgetBuilder>{
  'Shopping Page': (_) => ShoppingPage(),
  'Cart Page': (_) => const CartPage(),
};

// make this a `StateProvider` so we can change its value
final selectedPageNameProvider = StateProvider<String>((ref) {
  // default value
  return availablePages.keys.first;
});

final selectedPageBuilderProvider = Provider<WidgetBuilder>((ref) {
  // watch for state changes inside selectedPageNameProvider
  final selectedPageKey = ref.watch(selectedPageNameProvider.state).state;
  // return the WidgetBuilder using the key as index
  return availablePages[selectedPageKey]!;
});
