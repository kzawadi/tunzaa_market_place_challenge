import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tunzaa_market_place_challenge/application/providers.dart';
import 'package:tunzaa_market_place_challenge/presentation/utils/page_scaffold.dart';
import 'package:tunzaa_market_place_challenge/presentation/widgets/products.dart';

class CartPage extends ConsumerWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(cartProvider);
    return PageScaffold(
        title: 'Cart',
        body: data.isEmpty
            ? const Center(child: Text('No Item In cart'))
            : ProductView(
                shoppingItemModel: data,
              ));
  }
}
