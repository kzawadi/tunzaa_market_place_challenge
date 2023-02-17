import 'package:dartz/dartz.dart';
import 'package:tunzaa_market_place_challenge/domain/core/tunzaa_failures.dart';
import 'package:tunzaa_market_place_challenge/domain/models/shopping_item_model.dart';

abstract class ShoppingServicesInterface {
  Future<Either<TunzaaFailures, List<ShoppingItemModel>>> fetchItems();
  Future<Either<TunzaaFailures, ShoppingItemModel>> searchItem(
    String searchTerm,
  );
}
