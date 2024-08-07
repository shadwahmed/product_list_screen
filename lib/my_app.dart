import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_list_screen/features/products/presentation/screens/product_details_screen.dart';
import 'package:product_list_screen/features/products/presentation/widgets/product_tab.dart';
import 'package:product_list_screen/home_screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: HomeScreen.routeName,
        routes: {
          HomeScreen.routeName: (context) => HomeScreen(),
          ProductTab.routeName: (context) => ProductTab(),
          ProductDetailsScreen.routeName: (context) => ProductDetailsScreen(),

        },
      ),
    );
  }
}
