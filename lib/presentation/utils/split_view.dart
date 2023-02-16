// split_view.dart
import 'package:flutter/material.dart';

class SplitView extends StatelessWidget {
  const SplitView({
    Key? key,
    // menu and content are now configurable
    required this.menu,
    required this.content,
    // these values are now configurable with sensible default values
    this.breakpoint = 600,
    this.menuWidth = 240,
  }) : super(key: key);
  final Widget menu;
  final Widget content;
  final double breakpoint;
  final double menuWidth;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth >= breakpoint) {
      // widescreen: menu on the left, content on the right
      return Row(
        children: [
          SizedBox(
            width: menuWidth,
            child: menu,
          ),
          Container(width: 0.5, color: Colors.black),
          Expanded(child: content),
        ],
      );
    } else {
      // narrow screen: show content, menu inside drawer
      return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,

        body: content,

        // bottomNavigationBar: const BottomNavBar()
        drawer: SizedBox(
          width: menuWidth,
          child: Drawer(
            // shape: const RoundedRectangleBorder(
            //   borderRadius: BorderRadius.only(
            //       topRight: Radius.circular(20),
            //       bottomRight: Radius.circular(20)),
            // ),
            child: menu,
          ),
        ),
      );
    }
  }
}
