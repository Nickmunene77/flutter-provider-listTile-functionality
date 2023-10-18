import 'package:flutter/material.dart';
import 'package:jewelapp/models/jewerly.dart';

class JewerlyShop extends ChangeNotifier {
//jewerly for sale
  final List<Jewerly> _shop = [
    //necklace
    Jewerly(name: "Necklace", price: "50.0", imageUrl: "lib/images/neck1.jpg"),
    Jewerly(name: "Necklace", price: "50.0", imageUrl: "lib/images/neck2.jpg"),
    Jewerly(name: "Necklace", price: "50.0", imageUrl: "lib/images/neck3.jpg"),

    //rings
    Jewerly(name: "Ring", price: "63.0", imageUrl: "lib/images/ring1.jpg"),
    Jewerly(name: "Ring", price: "63.0", imageUrl: "lib/images/ring2.jpg"),
    Jewerly(name: "Ring", price: "63.0", imageUrl: "lib/images/ring3.jpg"),

    //watches
    Jewerly(name: "Watch", price: "30.0", imageUrl: "lib/images/watch1.jpg"),
    Jewerly(name: "Watch", price: "30.0", imageUrl: "lib/images/watch2.webp"),
    Jewerly(name: "Watch", price: "30.0", imageUrl: "lib/images/watch3.jpg")
  ];

  //cart

  List<Jewerly> _myCart = [];

  //get list

  List<Jewerly> get jewerlyShop => _shop;

  //get cart
  List<Jewerly> get mycart => _myCart;

  //remove from cart
  void removeFromCart(Jewerly jewerly) {
    _myCart.remove(jewerly);
    notifyListeners();
  }

  //add to cart

  void addToCart(Jewerly jewerly) {
    _myCart.add(jewerly);
    notifyListeners();
  }
}
