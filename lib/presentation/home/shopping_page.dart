import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tunzaa_market_place_challenge/application/providers.dart';
import 'package:tunzaa_market_place_challenge/presentation/utils/page_scaffold.dart';
import 'package:tunzaa_market_place_challenge/presentation/widgets/products.dart';

class ShoppingPage extends ConsumerWidget {
  const ShoppingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // watch and rebuild when the state changes
    final state = ref.watch(shoppingNotifierProvider);

    return PageScaffold(
      title: 'Shopping',
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        hintText: 'search an iterm',
                      ),
                      onChanged: (text) async {
                        // text here is the inputed text
                        await ref
                            .read(shoppingNotifierProvider.notifier)
                            .search(text);
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                        hintText: 'Filter by price',
                      ),
                      onChanged: (text) async {
                        // text here is the inputed text
                        await ref
                            .read(shoppingNotifierProvider.notifier)
                            .filter(int.parse(text));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          state.isLoading
              ? const Center(child: CupertinoActivityIndicator())
              : Expanded(child: ProductView(shoppingItemModel: state.item)),
        ],
      ),
    );
  }
}
