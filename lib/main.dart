// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/FoodHome.dart';
// import 'package:flutter_app/FoodHome.dart';

void main() {
  runApp(MyFlutterApp());
}

//create MyFlutterApp
class MyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Code Anaylyze",
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Foodhome(),

      // home: MyHome(),
    );
  }
}

// My home page
class DefaultScaffold extends StatelessWidget {
  final Widget body;
  DefaultScaffold({required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  height: 30,
                  width: 40,
                  // decoration: BoxDecoration(
                  //   shape: BoxShape.circle, // Circle shape added
                  // ),
                  child: ClipOval(
                    child: Image.asset('assets/images/download.png',
                        fit: BoxFit.contain),
                  ),
                ),
                Text(
                  "Hassan",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                )
              ],
            ),
            Container(
              child: TextButton(
                onPressed: () {
                  print("Print");
                },
                child: (Text(
                  "Menu",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.black87,
                  ),
                )),
              ),
            )
          ],
        ),
      ),
      body: body,
      bottomNavigationBar: SingleChildScrollView(
        child: Container(
            height: 100,
            color: Colors.white,
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.chat,
                        size: 40,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.supervised_user_circle_sharp,
                        size: 40,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        size: 40,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.dining_rounded,
                        size: 40,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 40,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
