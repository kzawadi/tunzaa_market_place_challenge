import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tunzaa_market_place_challenge/application/providers.dart';
import 'package:tunzaa_market_place_challenge/presentation/utils/page_scaffold.dart';
import 'package:tunzaa_market_place_challenge/presentation/widgets/products_view.dart';

class CartPage extends ConsumerWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(cartProvider);
    return PageScaffold(
        title: 'Cart',
        body: data.isEmpty
            ? Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    width: 200,
                    child: Image.network(
                      'https://tunzaa.co.tz/images/tunzaa_logo.png',
                    ),
                  ),
                  const Text('No Item In cart'),
                ],
              ))
            : ProductView(
                shoppingItemModel: data,
              ));
  }
}
