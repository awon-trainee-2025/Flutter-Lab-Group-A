import 'package:clothing_app/views/navigation_views/account_page_view.dart';
import 'package:clothing_app/views/navigation_views/home_page_view.dart';
import 'package:clothing_app/views/navigation_views/shopping_cart_view.dart';
import 'package:clothing_app/views/navigation_views/wishlist_page_view.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  List views = [
    HomePageView(),
    WishlistPageView(),
    ShoppingCartView(),
    AccountPageView(),
  ];
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home, color: Colors.black),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite, color: Colors.black),
      label: 'Wishlist',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart, color: Colors.black),
      label: 'Cart',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_circle_sharp, color: Colors.black),
      label: 'Account',
    ),
  ];
  int selectedView = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views.elementAt(selectedView),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedView,
        onTap: (value) {
          setState(() {
            selectedView = value;
          });
        },
        items: items,
      ),
    );
  }
}
