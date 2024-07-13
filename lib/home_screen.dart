import 'package:flutter/material.dart';
import 'package:product_list_screen/account_tab.dart';
import 'package:product_list_screen/home_tab.dart';
import 'package:product_list_screen/nav_bar_icon.dart';
import 'package:product_list_screen/product_tab.dart';
import 'package:product_list_screen/wishlist_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  static const String routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadiusDirectional.only(
            topStart: Radius.circular(15),
            topEnd: Radius.circular(15),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Theme.of(context).primaryColor,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            unselectedItemColor: Colors.white,
            selectedItemColor: Theme.of(context).primaryColor,
            items: [
              BottomNavigationBarItem(
                icon: NavBarIcon(
                  imagePath: "assets/images/home_icon.png",
                  isSelected: currentTabIndex == 0,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: NavBarIcon(
                  imagePath: "assets/images/app_icon.png",
                  isSelected: currentTabIndex == 1,
                ),
                label: 'Category',
              ),
              BottomNavigationBarItem(
                icon: NavBarIcon(
                  imagePath: "assets/images/favirote_icon.png",
                  isSelected: currentTabIndex == 2,
                ),
                label: 'Wishlist',
              ),
              BottomNavigationBarItem(
                icon: NavBarIcon(
                  imagePath: "assets/images/account_icon.png",
                  isSelected: currentTabIndex == 3,
                ),
                label: 'Account',
              ),
            ],
            currentIndex: currentTabIndex,
            onTap: (index) => setState(() => currentTabIndex = index),
          )),
      body: tabs[currentTabIndex],
    );
  }

  List<Widget> tabs = [
    HomeTab(),
    ProductTab(),
    WishlistTab(),
    AccountTab(),
  ];
}
