import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tunzaa_market_place_challenge/application/providers.dart';
import 'package:tunzaa_market_place_challenge/presentation/utils/async_ui.dart';
import 'package:tunzaa_market_place_challenge/presentation/utils/page_scaffold.dart';
import 'package:tunzaa_market_place_challenge/presentation/widgets/products.dart';
import 'package:tunzaa_market_place_challenge/presentation/widgets/tunzaa_failure_view.dart';

class ShoppingPage extends ConsumerWidget {
  const ShoppingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // watch and rebuild when the state changes
    final state = ref.watch(shoppingNotifierProvider);
    ref.listen<AsyncValue<void>>(
      shoppingNotifierProvider,
      (_, state) => state.showSnackbarOnError(context),
    );
    return PageScaffold(
      title: 'Shopping',
      body: state.when(
        data: (data) {
          return data.fold(
            (l) => TunzaaFaiureView(tunzaaFailures: l),
            (r) => ProductView(shoppingItemModel: r),
          );
        },
        error: (e, s) {
          return const Text('Please restart app');
        },
        loading: () {
          return const Center(child: CupertinoActivityIndicator());
        },
      ),
    );
  }
}
