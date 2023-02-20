import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tunzaa_market_place_challenge/domain/core/tunzaa_failures.dart';

class TunzaaFaiureView extends StatelessWidget {
  const TunzaaFaiureView({super.key, required this.tunzaaFailures});
  final TunzaaFailures tunzaaFailures;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                tunzaaFailures.map(
                  unknownFailure: (_) {
                    return 'Check your device for active internet connection.';
                  },
                  insufficientPermission: (e) {
                    return ' Seems you lack sufficient permission';
                  },
                  serverError: (e) {
                    return 'We have encountered an error with the server';
                  },
                  serviceUnavailable: (e) {
                    return ' Service in currently not available';
                  },
                ),
                style: GoogleFonts.nunito(
                  color: Colors.red,
                  fontSize: 18,
                ),
              ),
              const Icon(
                Icons.error_outline,
                size: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
