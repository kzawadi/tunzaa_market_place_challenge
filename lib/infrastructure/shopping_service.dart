import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:tunzaa_market_place_challenge/domain/core/tunzaa_failures.dart';
import 'package:tunzaa_market_place_challenge/domain/interfaces/shopping_interface.dart';
import 'package:tunzaa_market_place_challenge/domain/models/shopping_item_model.dart';
import 'package:tunzaa_market_place_challenge/infrastructure/constants.dart';

/// An implementaion of an interface [ShoppingServicesInterface]
/// the overidded methods are functional...meaning they return
/// either a successful valu on the right or a faiulre on the left
/// this can be used as a union case and act accordingly either in ui
/// or where it's returned
class ShoppingServiceImpl implements ShoppingServicesInterface {
  http.Client client = http.Client();
  Map<String, String> headers = {'Accept': 'application/json'};

  final Dio _dio = Dio();

  @override
  Future<Either<TunzaaFailures, List<ShoppingItemModel>>> fetchItems() async {
    try {
      return await _dio.get(apiUrl).then(
        (value) {
          if (value.statusCode == 200) {
            final data = value.data;
            List<ShoppingItemModel> shoppingList = [];

            if (data is List) {
              return right(
                data.map((e) => ShoppingItemModel.fromJson(e)).toList(),
              );
            }

            return right(shoppingList);
          } else if (value.statusCode == 503) {
            if (kDebugMode) {
              print('failed to Fetch data:  ${value.statusCode}');
            }
            return left(const TunzaaFailures.serviceUnavailable());
          } else {
            if (kDebugMode) {
              print('An unknoen error has occured');
            }
            return left(const TunzaaFailures.serverError());
          }
        },
      );
    } catch (e) {
      if (kDebugMode) {
        print('an unknown error has occured on a device $e');
      }
      return left(const TunzaaFailures.unknownFailure());
    }
  }

  @override
  Future<Either<TunzaaFailures, ShoppingItemModel>> searchItem(
    String seatrchTerm,
  ) {
    // TODO: implement searchItem
    throw UnimplementedError();
  }
}
