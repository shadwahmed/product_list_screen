import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:product_list_screen/core/di/service_locator.dart';
import 'package:product_list_screen/core/widgets/error_indicator.dart';
import 'package:product_list_screen/core/widgets/loading_indicator.dart';
import 'package:product_list_screen/features/products/presentation/cubit/products_cubit.dart';
import 'package:product_list_screen/features/products/presentation/cubit/products_states.dart';
import 'package:product_list_screen/features/products/presentation/widgets/product_item.dart';
import 'package:product_list_screen/features/products/presentation/widgets/search_bar_with_cart.dart';

class ProductTab extends StatelessWidget {
  static const String routeName = "productTab";
  int index = 0;

  ProductTab({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => serviceLocator.get<ProductsCubit>()..getProducts(),
      child: SafeArea(
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
                child: BlocBuilder<ProductsCubit, ProductsState>(
                    builder: (context, state) {
                  if (state is GetProductsLoading) {
                    return LoadingIndicator();
                  } else if (state is GetProductsError) {
                    return ErrorIndicator(state.message);
                  } else if (state is GetProductsSuccess) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(left: 12, right: 12, top: 20),
                      child: GridView.builder(
                          itemCount: state.products.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 2 / 2.5,
                            crossAxisSpacing: 16.w,
                            mainAxisSpacing: 16.h,
                          ),
                          itemBuilder: (context, index) {
                            return ProductItem(state.products[index]);
                          }),
                    );
                  }else{
                    return SizedBox();
                  }
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
