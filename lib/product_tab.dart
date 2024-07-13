import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_list_screen/search_bar_with_cart.dart';


class ProductTab extends StatelessWidget {
  static const String routeName = "productTab";

  const ProductTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 35.h,left: 16.w),
              child: Image.asset(
                "assets/images/route_logo.png",
                color: Theme.of(context).primaryColor,
                height: 22.h,
                width: 66.w,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 15.h,),
            Center(child: SearchBarWithCart()),
          ],
        ),
      ),
    );
  }
}
