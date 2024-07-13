import 'package:flutter/material.dart';

class WishlistTab extends StatelessWidget {
  const WishlistTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
          child: Text(
            "Wishlist Tab",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor),
          )),
    );
  }
}
