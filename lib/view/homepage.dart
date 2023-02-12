import 'package:flutter/material.dart';
import 'package:flutter_application_2/loginpage.dart';
import 'package:flutter_application_2/view/catrogrypage.dart';
import 'package:flutter_application_2/view/offerpage.dart';
import 'package:flutter_application_2/view/profilepage.dart';

class MainPage extends StatelessWidget {
  final String username;
  int currentindex = 0;
  List<Color> categoryColors = [
    Colors.lightBlue[300]!,
    Colors.orange[200]!,
    Colors.pink[100]!,
    Colors.white
  ];

  List<Color> bannerColor = [
    Colors.orange[200]!,
    Colors.lightBlue[300]!,
    Colors.pink[100]!,
    Colors.white
  ];

  List subtitle = [
    "Home & Living",
    "Daily Needs",
    "Food",
    "Biking & Riding",
  ];

  List pages = [
    HomePage(),
    OfferPage(),
    OfferPage(),
    OfferPage(),
  ];

  MainPage({super.key, required this.username});

//BANNER WIDGET
  Widget bannerWidget() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 190,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              separatorBuilder: (context, index) => SizedBox(
                width: 5,
              ),
              itemBuilder: (context, index) => Container(
                width: 380,
                height: 190,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: bannerColor[index]),
              ),
            ),
          ),
        ),
      ],
    );
  }
//BANNER WIDGET

//CATEGORY WIDGET
  Widget categoryWidget() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 120,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              separatorBuilder: (context, index) => SizedBox(
                width: 11,
              ),
              itemBuilder: (context, index) => Container(
                width: 120,
                height: 60,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Center(child: Text(subtitle[index]))]),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: categoryColors[index]),
              ),
            ),
          ),
        )
      ],
    );
  }
//CATEGORY WIDGET

//HEADTITLE WIDGET
  Widget headTitle(String name) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text("See All")
        ],
      ),
    );
  }
//HEADTITLE WIDGET

  //BOTTOM WIDGET
  Widget bottomWidgets() {
    return BottomNavigationBar(
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
        ]);
  }
  //BOTTOM WIDGET

  @override
  Widget build(BuildContext context) {
    //GRID WIDGET
    Widget gridWidget() {
      return Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 222,
          child: GridView.builder(
            itemCount: 5,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 15),
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(5)),
            ),
          ),
        ),
      );
    }
    //GRID WIDGET

    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[200],
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryPage(),
                  ));
            },
            child: Icon(
              Icons.menu_rounded,
              color: Colors.black,
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(),
                    ));
              },
              child: Icon(
                Icons.notifications_none_rounded,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                username.isNotEmpty ? "Welcome $username" : "Welcome",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              suffixIcon: Icon(Icons.search),
                              hintText: "   Search"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.lightBlue[300],
                        ),
                        width: 40,
                        height: 40,
                        child: Icon(Icons.settings))
                  ],
                ),
              ),
              SizedBox(height: 20),
              bannerWidget(),
              SizedBox(
                height: 25,
              ),
              headTitle("Choose Your Category"),
              SizedBox(
                height: 15,
              ),
              categoryWidget(),
              SizedBox(
                height: 25,
              ),
              headTitle("Home & Living"),
              SizedBox(
                height: 25,
              ),
              gridWidget()
            ]),
          ),
        ),
        bottomNavigationBar: bottomWidgets());
  }
}
