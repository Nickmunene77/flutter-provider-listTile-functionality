import 'package:flutter/material.dart';
import 'package:jewelapp/models/jewerly.dart';

class JewerlyTile extends StatelessWidget {
  final Jewerly jewerly;
  final void Function()? onPressed;
  final Widget icon;

  JewerlyTile(
      {Key? key,
      required this.jewerly,
      required this.onPressed,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white60,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 18),
      child: ListTile(
        title: Text(jewerly.name),
        subtitle: Text(jewerly.price),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset(
            jewerly.imageUrl,
            height: 100,
            width: 80,
            fit: BoxFit.cover,
          ),
        ),
        trailing: IconButton(
          icon: icon,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
