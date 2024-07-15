import 'package:flutter/material.dart';
import 'package:product_list_screen/features/products/presentation/widgets/product_tab.dart';
import 'package:product_list_screen/home_screen.dart';
import 'package:product_list_screen/tabs/home_tab.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const String routeName='productDetails';
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              Navigator.pushNamed(
                context,
                HomeScreen.routeName,
              );
            },
            child: Icon(Icons.arrow_back,color: Colors.black,)),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
            child: Text(
              "Product Details Screen",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor),
            )),
      ),
    );
  }
}
