import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tunzaa_market_place_challenge/application/providers.dart';

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
    return ListView(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      children: <Widget>[
        const DrawerHeader(
            decoration: BoxDecoration(
              // color: Colors.blue,
              image: DecorationImage(
                fit: BoxFit.contain,
                image:
                    NetworkImage('https://tunzaa.co.tz/images/tunzaa_logo.png'),
              ),
              // shape: BoxShape.values.
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ), //BoxDecoration
            child: SizedBox.shrink()),
        const SizedBox(height: 50),
        for (var pageName in availablePages.keys)
          PageListTile(
            // 3. pass the selectedPageName as an argument
            selectedPageName: selectedPageName,
            pageName: pageName,
            onPressed: () => _selectPage(context, ref, pageName),
          ),
      ],
    );
    // );
  }
}

class PageListTile extends StatelessWidget {
  const PageListTile({
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
    return ListTile(
      // show a check icon if the page is currently selected
      // note: we use Opacity to ensure that all tiles have a leading widget
      // and all the titles are left-aligned
      leading: Opacity(
        opacity: selectedPageName == pageName ? 1.0 : 0.0,
        child: const Icon(Icons.check),
      ),
      title: Text(pageName),
      onTap: onPressed,
    );
  }
}
