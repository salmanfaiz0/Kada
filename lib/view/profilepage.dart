import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  List detailsname = [
    "My Account",
    "My Order History",
    "Shipping Address",
    "Privacy Policy",
    "Return Policy"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[300],
        elevation: 0,
        actions: [Icon(Icons.edit)],
      ),
      body: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          color: Colors.lightBlue[300],
          child: Column(children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                "https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/03/GettyImages-1092658864_hero-1024x575.jpg?w=1155&h=1528",
              ),
              radius: 52,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Cumstor Name",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              "Phone Number",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ]),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 5,
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
                      child: Icon(Icons.person)),
                  title: Text(detailsname[index]),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
            height: 50,
            child: Text(
              "Version - 1.33.33v",
              style: TextStyle(color: Colors.grey),
            ))
      ]),
    );
  }
}
