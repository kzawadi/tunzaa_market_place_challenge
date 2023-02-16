import 'package:go_router/go_router.dart';
import 'package:tunzaa_market_place_challenge/presentation/home/home_page.dart';

final GoRouter tunzaaRouter = GoRouter(
  routes: [
    // GoRoute(
    //   path: "/",
    //   builder: (context, state) => const OnboardScreen(),
    // ),
    GoRoute(
      path: "/",
      builder: (context, state) => const HomePage(),
    )
  ],
);
