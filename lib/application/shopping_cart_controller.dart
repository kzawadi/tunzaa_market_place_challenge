import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tunzaa_market_place_challenge/application/providers.dart';
import 'package:tunzaa_market_place_challenge/application/shop_state.dart';
import 'package:tunzaa_market_place_challenge/domain/core/tunzaa_failures.dart';
import 'package:tunzaa_market_place_challenge/domain/models/shopping_item_model.dart';

/// A main state class of the product catalogue
/// its a statenotifier with initial value of [AsyncLoading]
/// and upon instance creation we envoke a [fetchItems] method
/// and return an [Either] type of failure [TunzaaFailures] on the left
/// and a list of ProductItems[ShoppingItemModel]. This ensure that our
/// apps works functional and no function from services return void
/// {Functional programming}. so we handle every situation according
class ProductscatalogueNotifier extends StateNotifier<ShopState> {
//
  ProductscatalogueNotifier({required this.ref})
      : super(const ShopState.loading()) {
    fetchItems(ref: ref);
  }
  final Ref ref;

  Future fetchItems({required Ref ref}) async {
    final shooppingServicesInterface =
        ref.read(shoppingServicesProviderProvider);

    state = const ShopState.loading();

    final results = await shooppingServicesInterface.fetchItems();
    state = results.fold(
      (l) => ShopState.onError(l),
      (r) => ShopState.onData(items: r),
    );
  }

  void addItemToCart(int id, {required bool inCart}) {
    final data = ref.watch(cartProvider);

    final updatesProduct = state.maybeWhen(
        orElse: () {},
        onData: (d) {
          return d
              .firstWhere((element) => element.id == id)
              .copyWith(inCart: inCart);
        });

    // var v = [
    //     for (int i = 0; i < state.length; i++)
    //       if (state[i].id == id) updatedProduct else state[i]
    //   ];
  }
}
