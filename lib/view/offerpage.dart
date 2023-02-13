import 'package:flutter/material.dart';

class OfferPage extends StatelessWidget {
  List offer = [
    "Women Jeans up to 60%off",
    "Men Joggers up to 90%off",
    "Polo up to 60%off",
    "Men's Tees up to 10%off",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: ListView.builder(
            itemCount: offer.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
              ),
              child: Card(
                child: ListTile(
                  leading: Container(
                      width: 33,
                      height: 33,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.lightBlue[200]),
                      child: Icon(Icons.discount_rounded)),
                  title: Text("Offer"),
                  subtitle: Text(offer[index]),
                ),
              ),
            ),
          ),
        ));
  }
}
