import 'package:flutter/material.dart';
import 'package:jewelapp/commponents/myTile.dart';
import 'package:jewelapp/models/jewerly.dart';
import 'package:jewelapp/models/shop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  //REMOVE FROM CART
  void removeFromCart(Jewerly jewerly) {
    Provider.of<JewerlyShop>(context, listen: false).removeFromCart(jewerly);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<JewerlyShop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "Cart",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        child: ListView.builder(
                            itemCount: value.mycart.length,
                            itemBuilder: (context, index) {
                              //one jewerly
                              Jewerly oneJewerly = value.mycart[index];
                              //return jewrycart
                              return JewerlyTile(
                                  jewerly: oneJewerly,
                                  onPressed: () => removeFromCart(oneJewerly),
                                  icon: Icon(Icons.delete));
                            })),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Text("Place Order"),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 7, 243),
                          borderRadius: BorderRadius.circular(10)),
                    )
                  ],
                ),
              ),
            ));
  }
}
