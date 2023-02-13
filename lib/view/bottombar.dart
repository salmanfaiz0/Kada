import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/loginpage.dart';
import 'package:flutter_application_2/view/catrogrypage.dart';
import 'package:flutter_application_2/view/forgotpage.dart';
import 'package:flutter_application_2/view/homepage.dart';
import 'package:flutter_application_2/view/offerpage.dart';
import 'package:flutter_application_2/view/profilepage.dart';

class BottomBar extends StatefulWidget {
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int pageIndex = 0;

  List pages = [
    MainPage(),
    CategoryPage(),
    OfferPage(),
    ForgotPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (newindex) {
            setState(() {
              pageIndex = newindex;
            });
          },
          currentIndex: pageIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.lightBlue[300],
          unselectedItemColor: Colors.black87,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.app_registration_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_offer_sharp), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded), label: "")
          ]),
    );
  }
}
