import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tunzaa_market_place_challenge/application/providers.dart';
import 'package:tunzaa_market_place_challenge/application/shop_state.dart';
import 'package:tunzaa_market_place_challenge/domain/core/tunzaa_failures.dart';
import 'package:tunzaa_market_place_challenge/domain/models/shopping_item_model.dart';

/// A main state class of the product catalogue
/// its a statenotifier with initial value of [ShopState]
/// and upon instance creation we envoke a [fetchItems] method
/// and return an [Either] type of failure [TunzaaFailures] on the left
/// and a list of ProductItems[ShoppingItemModel]. This ensure that our
/// apps works functionally and no function from services return void
/// {Functional programming}. so we handle every situation according

class ProductNotifier extends StateNotifier<ShopState> {
  ProductNotifier({required this.ref}) : super(ShopState(failures: none())) {
    fetchItems();
  }
  final Ref ref;

  fetchItems() async {
    final shooppingServicesInterface =
        ref.read(shoppingServicesProviderProvider);

    state = state.copyWith(isLoading: true);

    state = await shooppingServicesInterface.fetchItems().then(
          (value) => value.fold(
            (l) => state.copyWith(failures: some(l), isLoading: false),
            (r) => state.copyWith(item: r, isLoading: false),
          ),
        );
  }

  Future search(String searchterm) async {
    // Future.delayed(const Duration(milliseconds: 500)).then((value) async {

    // });
    final shooppingServicesInterface =
        ref.read(shoppingServicesProviderProvider);
    state = state.copyWith(isLoading: true);

    if (searchterm.isNotEmpty) {
      final results = await shooppingServicesInterface.fetchItems();

//todo(kzawadi) a weird behavior happens when you modify a list of a modified list
//todo(kzawadi) the commented out code is usable but opinionated
      final searchedList =
          // state.item
          //     .where((element) =>
          //         element.title!.toLowerCase().contains(searchterm.toLowerCase()))
          //     .toList();
          results.fold(
        (l) => null,
        (r) => r
            .where((element) =>
                element.title!.toLowerCase().contains(searchterm.toLowerCase()))
            .toList(),
      );
      // var p = state.item;
      // if (searchterm.isNotEmpty) {
      //   state = state.copyWith(item: searchedList, isLoading: false);
      // } else {
      //   state = state.copyWith(item: p, isLoading: false);
      // }

      state = state.copyWith(item: searchedList!, isLoading: false);
    } else {
      state = state.copyWith(isLoading: false);
    }
  }

  Future addToCart(int id, {required bool inCart}) async {
    final updatedItems = state.item
        .firstWhere((element) => element.id == id)
        .copyWith(inCart: inCart);

    var v = [
      for (int i = 0; i < state.item.length; i++)
        if (state.item[i].id == id) updatedItems else state.item[i]
    ];

    state = state.copyWith(item: v);
  }

  Future filter(int? filter) async {
    final shooppingServicesInterface =
        ref.read(shoppingServicesProviderProvider);
    state = state.copyWith(isLoading: true);
    int term = filter ?? 10000000;

    final results = await shooppingServicesInterface.fetchItems();
    final filteredList =
        // state.item
        //     .where((element) =>
        //         element.title!.toLowerCase().contains(searchterm.toLowerCase()))
        //     .toList();
        results.fold(
      (l) => null,
      (r) => r.where((element) => element.price! <= term).toList(),
    );
    // var p = state.item;
    // if (searchterm.isNotEmpty) {
    //   state = state.copyWith(item: searchedList, isLoading: false);
    // } else {
    //   state = state.copyWith(item: p, isLoading: false);
    // }

    state = state.copyWith(item: filteredList!, isLoading: false);
  }
}
