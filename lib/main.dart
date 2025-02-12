// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/FoodHome.dart';
import 'package:flutter_app/chat.dart';
import 'package:flutter_app/pages/Favorite.dart';
import 'package:flutter_app/pages/Menu.dart';
import 'package:flutter_app/pages/Profile.dart';
// import 'package:flutter_app/FoodHome.dart';

void main() {
  runApp(MyFlutterApp());
}

//create MyFlutterApp
class MyFlutterApp extends StatelessWidget {
  const MyFlutterApp({super.key});

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
  const DefaultScaffold({super.key, required this.body});

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
                SizedBox(
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
                const Text(
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
                child: (const Text(
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
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyChat()));
                          print("Click on chat");
                        },
                        child: const Icon(
                          Icons.chat,
                          size: 40,
                          color: Colors.grey,
                        ),
                      ),
                      const Text("My Chat")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfilePage()));
                          print("Click on profile");
                        },
                        child: const Icon(
                          Icons.supervised_user_circle_sharp,
                          size: 40,
                          color: Colors.grey,
                        ),
                      ),
                      const Text("Profile")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Foodhome()));
                          print("Click on home");
                        },
                        child: const Icon(
                          Icons.home,
                          size: 40,
                          color: Colors.grey,
                        ),
                      ),
                      const Text("Home")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Menu()));
                          print("Click on menu");
                        },
                        child: const Icon(
                          Icons.dining_rounded,
                          size: 40,
                          color: Colors.grey,
                        ),
                      ),
                      const Text("Menu")
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => MyFavorite()));
                          print("Click on Favorite");
                        },
                        child: const Icon(
                          Icons.favorite,
                          size: 40,
                          color: Colors.grey,
                        ),
                      ),
                      const Text("Favorite")
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
