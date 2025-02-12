import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text("hi i am Favourite" ,style: TextStyle(
      color: Colors.pinkAccent,
      fontSize: 24,
      fontWeight: FontWeight.bold,
      fontFamily: "Charmonman"
    ),);
  }
}
