import 'package:flutter/material.dart';
import 'package:tunzaa_market_place_challenge/domain/core/tunzaa_failures.dart';

class TunzaaFaiureView extends StatelessWidget {
  const TunzaaFaiureView({super.key, required this.tunzaaFailures});
  final TunzaaFailures tunzaaFailures;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        tunzaaFailures.map(unknownFailure: (_) {
          return 'Sorry an Unknown Error has occoured';
        }, insufficientPermission: (e) {
          return ' Seems you lack sufficient permission';
        }, serverError: (e) {
          return 'We have encountered an error with the server';
        }, serviceUnavailable: (e) {
          return ' Service in currently not available';
        }),
      ),
    );
  }
}
