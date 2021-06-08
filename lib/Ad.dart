import 'package:flutter/material.dart';

import 'Home.dart';

class Ad extends StatefulWidget {
  const Ad({Key? key}) : super(key: key);

  @override
  _AdState createState() => _AdState();
}

class _AdState extends State<Ad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          lst(),
          lst(),
          lst(),
          lst(),
          lst(),
          lst(),
          lst(),
          lst(),
          lst(),
          lst(),
          lst(),
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: Text(
                "Next",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget lst() {
  return SingleChildScrollView(
    child: Container(
      color: Colors.white,
      height: 130,
      child: Row(
        children: [
          Container(
            child: Image(
                image: NetworkImage(
                    "https://pngimg.com/uploads/macbook/macbook_PNG17.png")),
            height: 95,
            width: 90,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
              top: 10.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "MacBook Pro",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text(
                  "5.0 (23 Review)",
                  style: TextStyle(fontSize: 18),
                ),
                Row(
                  children: [
                    Text("20 Pieces"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "9000 PKR",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.purple),
                    ),
                  ],
                ),
                Text("Quantity 5"),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
