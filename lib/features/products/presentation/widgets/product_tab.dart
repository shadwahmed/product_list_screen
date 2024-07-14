import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_list_screen/features/products/presentation/widgets/product_item.dart';
import 'package:product_list_screen/features/products/presentation/widgets/search_bar_with_cart.dart';

class ProductTab extends StatelessWidget {
  static const String routeName = "productTab";
  int index = 0;

  ProductTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 35.h, left: 16.w),
              child: Image.asset(
                "assets/images/route_logo.png",
                color: Theme.of(context).primaryColor,
                height: 22.h,
                width: 66.w,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Center(child: SearchBarWithCart()),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 20),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2 / 2.5,
                      crossAxisSpacing: 16.w,
                      mainAxisSpacing: 16.h,
                    ),
                    itemBuilder: (context, index) {
                      return ProductItem();
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
