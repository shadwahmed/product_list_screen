import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_list_screen/features/products/presentation/widgets/search_textfield.dart';

class SearchBarWithCart extends StatelessWidget {
  const SearchBarWithCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(left: 16.w),
            width: 348.w,
            height: 50.h,
            child: SearchTextField()),
        SizedBox(width: 25,),
        InkWell(
            onTap: () {},
            child: Icon(
              Icons.shopping_cart_outlined,
              size: 33.sp,
              color: Theme.of(context).primaryColor,
            ))
      ],
    );
  }
}
