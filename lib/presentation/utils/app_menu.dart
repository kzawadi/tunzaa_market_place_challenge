// a map of ("page name", WidgetBuilder) pairs
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tunzaa_market_place_challenge/presentation/home/settings_page.dart';
import 'package:tunzaa_market_place_challenge/presentation/home/shopping_cart_page.dart';

final _availablePages = <String, WidgetBuilder>{
  'Shopping Cart': (_) => const ShoppingCartPage(),
  'Home': (_) => const SettingsPage(),
};

// make this a `StateProvider` so we can change its value
final selectedPageNameProvider = StateProvider<String>((ref) {
  // default value
  return _availablePages.keys.first;
});

final selectedPageBuilderProvider = Provider<WidgetBuilder>((ref) {
  // watch for state changes inside selectedPageNameProvider
  final selectedPageKey = ref.watch(selectedPageNameProvider.notifier).state;
  // return the WidgetBuilder using the key as index
  return _availablePages[selectedPageKey]!;
});

// 1. extend from ConsumerWidget
class AppMenu extends ConsumerWidget {
  const AppMenu({super.key});

  void _selectPage(BuildContext context, WidgetRef ref, String pageName) {
    if (ref.read(selectedPageNameProvider.notifier).state != pageName) {
      ref.read(selectedPageNameProvider.notifier).state = pageName;
      // dismiss the drawer of the ancestor Scaffold if we have one
      if (Scaffold.maybeOf(context)?.hasDrawer ?? false) {
        Navigator.of(context).pop();
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 2. watch the provider's state
    final selectedPageName = ref.watch(selectedPageNameProvider.notifier).state;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: const Text('Tunzaa Demo'),
              accountEmail: const Text('tunzaa@demo.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    'https://pbs.twimg.com/profile_images/1382364051276173312/O_bNN6BU_400x400.jpg',
                    fit: BoxFit.cover,
                    width: 90,
                    height: 90,
                  ),
                ),
              ),
              decoration: const BoxDecoration(
                // color: Colors.blue,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://pbs.twimg.com/profile_banners/1194647991560355840/1629090574/1500x500'),
                ),
                // shape: BoxShape.values.
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 50),
            for (var pageName in _availablePages.keys)
              SidebarListTile(
                // 3. pass the selectedPageName as an argument
                selectedPageName: selectedPageName,
                pageName: pageName,
                onPressed: () => _selectPage(context, ref, pageName),
              ),
          ],
        ),
      ),
    );
  }
}

class SidebarListTile extends StatelessWidget {
  const SidebarListTile({
    Key? key,
    this.selectedPageName,
    required this.pageName,
    this.onPressed,
  }) : super(key: key);
  final String? selectedPageName;
  final String pageName;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        // show a check icon if the page is currently selected
        // note: we use Opacity to ensure that all tiles have a leading widget
        // and all the titles are left-aligned
        leading: Opacity(
          opacity: selectedPageName == pageName ? 1.0 : 0.0,
          child: const Icon(Icons.check),
        ),

        title: Text(pageName),
        enableFeedback: selectedPageName == pageName ? true : false,
        onTap: onPressed,
      ),
    );
  }
}
