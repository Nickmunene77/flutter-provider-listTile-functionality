import 'package:flutter/material.dart';
import 'package:jewelapp/commponents/myTile.dart';
import 'package:jewelapp/models/jewerly.dart';
import 'package:jewelapp/models/shop.dart';
import 'package:provider/provider.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  void addToCart(Jewerly jewerly) {
    Provider.of<JewerlyShop>(context, listen: false).addToCart(jewerly);

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Added succesful"),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<JewerlyShop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(10), // Add border radius here
                      child: Image.asset(
                        "lib/images/neck5.jpg",
                        width: 200, // Adjust the size as needed
                        height: 200, // Adjust the size as needed
                      ),
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: value.jewerlyShop.length,
                          itemBuilder: (context, index) {
                            //individual jewerly
                            Jewerly oneJewerly = value.jewerlyShop[index];

                            return JewerlyTile(
                              jewerly: oneJewerly,
                              onPressed: () => addToCart(oneJewerly),
                              icon: Icon(Icons.add_shopping_cart_rounded),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ));
  }
}
