import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 258.h,
      width: 191.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(color: Color.fromRGBO(0, 65, 130, 0.3), width: 2.w),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                  child: Image.asset(
                "assets/images/product_ph.png",
                height: 125.h,
                width: 191.w,
                fit: BoxFit.fill,
              )),
              Positioned(
                top: 4.h,
                right: 3.w,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 16,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_outline_outlined,
                      color: Theme.of(context).primaryColor,
                      size: 18,
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3, left: 7),
            child: Text(
              "Nike Air Jordon Nike shoes flexible for wo..",
              style: Theme.of(context).textTheme.bodyLarge,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 3, left: 7),
                child: Text(
                  "EGP 1,200 ",
                  style: Theme.of(context).textTheme.bodyLarge,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              SizedBox(
                width: 7.w,
              ),
              Text(
                "200 EGP",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Color.fromRGBO(0, 65, 130, 0.6)),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 3, left: 7),
                child: Text(
                  "Review (4.6)",
                  style: Theme.of(context).textTheme.bodySmall,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              SizedBox(
                width: 4.w,
              ),
              Icon(
                Icons.star,
                size: 18,
                color: Colors.yellow,
              ),
              SizedBox(
                width: 43.w,
              ),
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.add_circle,
                  size: 30,
                  color: Theme.of(context).primaryColor,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
