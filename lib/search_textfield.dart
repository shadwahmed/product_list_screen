import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTextField extends StatelessWidget {
   SearchTextField({super.key});

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(

      controller: searchController,
      decoration: InputDecoration(
        hintText: "what do you search for?",
        hintStyle: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 14.sp,
          color: Color.fromRGBO(6,0,79,0.6),
        ),
        prefixIcon: Icon(
          Icons.search,
          color: Theme.of(context).primaryColor,
          size: 24.sp,
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.r),
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
            )),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.r),
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
            )),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.r),
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
            )),
      ),
    );
  }
}
