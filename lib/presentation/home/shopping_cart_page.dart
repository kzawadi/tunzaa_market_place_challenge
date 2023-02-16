import 'package:flutter/material.dart';
import 'package:tunzaa_market_place_challenge/presentation/utils/page_scaffold.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageScaffold(
      title: 'Shopping Cart',
      body: Center(
        child: Text('CART'),
      ),
    );
  }
}
