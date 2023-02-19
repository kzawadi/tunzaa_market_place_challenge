// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tunzaa_market_place_challenge/application/providers.dart';
import 'package:tunzaa_market_place_challenge/domain/models/shopping_item_model.dart';
import 'package:tunzaa_market_place_challenge/presentation/widgets/product_modal_widget.dart';

class ProductView extends ConsumerWidget {
  const ProductView({
    super.key,
    required this.shoppingItemModel,
    required this.isCart,
  });
  final List<ShoppingItemModel> shoppingItemModel;
  final bool isCart;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(cartValue);
    return Stack(children: [
      GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 0.7,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, int index) {
          return GestureDetector(
            onTap: () {
              showModalBottomSheet<void>(
                // context and builder are
                // required properties in this widget
                context: context,
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width >= 600
                      ? MediaQuery.of(context).size.width / 2
                      : MediaQuery.of(context).size.width,
                ),
                builder: (BuildContext context) {
                  // we set up a container inside which
                  // we create center column and display text

                  // Returning SizedBox instead of a Container
                  return ProductModal(
                      shoppingItemModel: shoppingItemModel[index]);
                },
              );
            },
            child: Container(
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
                            shoppingItemModel[index].inCart
                                ? IconButton(
                                    iconSize: 20,
                                    icon: Icon(
                                      Icons.shopify,
                                      color: Colors.amber.shade900,
                                    ),
                                    onPressed: () {
                                      ref
                                          .read(
                                              shoppingNotifierProvider.notifier)
                                          .addToCart(
                                            shoppingItemModel[index].id ?? 0,
                                            inCart: false,
                                          );
                                    },
                                  )
                                : IconButton(
                                    iconSize: 20,
                                    icon: const Icon(
                                      Icons.shopify_sharp,
                                      // color: Colors.black,
                                    ),
                                    onPressed: () {
                                      ref
                                          .read(
                                              shoppingNotifierProvider.notifier)
                                          .addToCart(
                                            shoppingItemModel[index].id ?? 0,
                                            inCart: true,
                                          );
                                    },
                                  ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: shoppingItemModel.length,
      ),
      isCart
          ? Positioned(
              right: 8,
              bottom: 8,
              child: SizedBox(
                // height: 50,
                // width: 200,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Text(
                            'Total Price: ',
                            style: GoogleFonts.nunito(
                                color: Colors.red, fontSize: 15),
                          ),
                          Text(
                            value.toString(),
                            style: GoogleFonts.nunito(
                                color: Colors.blue, fontSize: 22),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          : const SizedBox(),
    ]);
  }
}
