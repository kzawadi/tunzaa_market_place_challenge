import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tunzaa_market_place_challenge/domain/models/shopping_item_model.dart';
import 'package:tunzaa_market_place_challenge/presentation/widgets/rating_widget.dart';

class ProductModal extends StatelessWidget {
  const ProductModal({
    super.key,
    required this.shoppingItemModel,
  });

  final ShoppingItemModel shoppingItemModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 100,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 40,
                width: 70,
                child: Image.network(
                  'https://tunzaa.co.tz/images/tunzaa_logo.png',
                ),
              ),
              Text('Tittle', style: GoogleFonts.nunito(fontSize: 20)),
              const Divider(
                  // color: Colors.black,
                  thickness: 2,
                  indent: 30,
                  endIndent: 30),
              Text(
                shoppingItemModel.title ?? '',
                style: GoogleFonts.nunito(fontSize: 17),
              ),
              const Divider(
                  // color: Colors.black,
                  thickness: 2,
                  indent: 30,
                  endIndent: 30),
              const SizedBox(height: 10),
              Text('Description', style: GoogleFonts.nunito(fontSize: 20)),
              const SizedBox(height: 10),
              const Divider(
                  // color: Colors.black,
                  thickness: 2,
                  indent: 30,
                  endIndent: 30),
              Flexible(
                flex: 2,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      shoppingItemModel.description ?? '',
                      style: GoogleFonts.nunito(fontSize: 17),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text('Rating'),
                    StarRating(
                      rating: shoppingItemModel.rating!.rate,
                    ),
                    Text(
                      '${shoppingItemModel.rating!.rate.toString()} of ${shoppingItemModel.rating!.count!.toString()}',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
