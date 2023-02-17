import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tunzaa_market_place_challenge/application/providers.dart';
import 'package:tunzaa_market_place_challenge/domain/core/tunzaa_failures.dart';
import 'package:tunzaa_market_place_challenge/domain/models/shopping_item_model.dart';

/// A main state class of the product catalogue
/// its a statenotifier with initial value of [AsyncLoading]
/// and upon instance creation we envoke a [fetchItems] method
/// and return an [Either] type of failure [TunzaaFailures] on the left
/// and a list of ProductItems[ShoppingItemModel]. This ensure that our
/// apps works functional and no function from services return void
/// {Functional programming}. so we handle every situation according
class ProductscatalogueNotifier extends StateNotifier<
    AsyncValue<Either<TunzaaFailures, List<ShoppingItemModel>>>> {
//
  ProductscatalogueNotifier({required this.ref}) : super(const AsyncLoading()) {
    fetchItems(ref: ref);
  }
  final Ref ref;

  Future fetchItems({required Ref ref}) async {
    final shooppingServicesInterface =
        ref.read(shoppingServicesProviderProvider);

    state = const AsyncLoading();

    state = (await AsyncValue.guard<
        Either<TunzaaFailures, List<ShoppingItemModel>>>(
      shooppingServicesInterface.fetchItems,
    ));
  }

  void addItemToCart(int id, {required bool inCart}) {
    final updatesProduct = state.value!.fold(
        (l) => null,
        (r) => r
            .firstWhere((element) => element.id == id)
            .copyWith(inCart: inCart));

    // state = Either
  }
}
