import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tunzaa_market_place_challenge/domain/models/shopping_item_model.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key, required this.shoppingItemModel});
  final List<ShoppingItemModel> shoppingItemModel;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 0.7,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, int index) {
          return Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: Stack(
              children: [
                Center(
                  child: SizedBox(
                    height: 100,
                    child: Image.network(
                      shoppingItemModel[index].image!,
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        );
                      },
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  child: Text(shoppingItemModel[index].title!,
                      style: GoogleFonts.nunitoSans(
                        color: Colors.indigo.shade900,
                      ),
                      overflow: TextOverflow.ellipsis),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Center(
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: Colors.cyan.shade50,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            shoppingItemModel[index].price!.toString(),
                            style: GoogleFonts.nunitoSans(
                              color: Colors.indigo.shade900,
                            ),
                          ),
                          Icon(
                            Icons.shopify,
                            color: Colors.indigo.shade900,
                            semanticLabel: 'Add to Cart',
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
        itemCount: shoppingItemModel.length);
  }
}
