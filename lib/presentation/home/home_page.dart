import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tunzaa_market_place_challenge/application/providers.dart';
import 'package:tunzaa_market_place_challenge/presentation/utils/app_menu.dart';
import 'package:tunzaa_market_place_challenge/presentation/utils/split_view.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedPageBuilder = ref.watch(selectedPageBuilderProvider);
    return SplitView(
      // ignore: prefer_const_constructors
      menu: AppMenu(),
      content: selectedPageBuilder(context),
    );
  }
}
