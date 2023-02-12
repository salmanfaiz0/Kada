import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CategoryPage extends StatefulWidget {
  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List<Color> categoryColors = [
    Colors.lightBlue[300]!,
    Colors.orange[200]!,
    Colors.pink[100]!,
    Colors.white,
    Colors.lightBlue[300]!,
    Colors.orange[200]!,
    Colors.pink[100]!,
    Colors.white
  ];

  List subtitle = [
    "Home & Living",
    "Daily Needs",
    "Food",
    "Biking & Riding",
    "Fashion & LifeStyle",
    "Health & Beauty",
    "Food",
    "Cream ",
  ];

  List items = ['item1', 'item2', 'item3'];
  String? _selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          "Categories",
          style: TextStyle(color: Colors.black),
        ),
        actions: [Icon(Icons.alarm)],
        centerTitle: true,
        backgroundColor: Colors.grey[200],
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(13),
            child: Column(children: [
              Row(
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
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 522,
                child: GridView.builder(
                  itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15),
                  itemBuilder: (context, index) => Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Center(child: Text(subtitle[index]))]),
                    decoration: BoxDecoration(
                        color: categoryColors[index],
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
