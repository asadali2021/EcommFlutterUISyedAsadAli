import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Ecom App UI",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
            ),
          ),
        ),
        elevation: 6,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  CupertinoSearchTextField(
                    placeholder: "Username",
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 20,
                      ),
                      Text(
                        "History",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  phone(),
                  phone(),
                  phone(),
                  phone(),
                  phone(),
                  phone(),
                  phone(),
                  phone(),
                  phone(),
                  phone(),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Back")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget phone() {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: NetworkImage(
          "https://purepng.com/public/uploads/large/samsung-galaxy-s10-prism-front-6bx.png"),
      radius: 30,
    ),
    title: Text("Samsung S10"),
    subtitle: Text("5.0 (23 Reviews)"),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("100000 PKR"),
      ],
    ),
  );
}
