// My home page
import 'package:flutter/material.dart';

class Question1 extends StatelessWidget {
  const Question1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFBFF7B7A),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                height: 120,
                color: Colors.blue,
              ),
            ),
            Expanded(
              child: Container(
                height: 120,
                color: Colors.red,
              ),
            ),
            Expanded(
              child: Container(
                height: 120,
                color: Colors.orange,
              ),
            ),
            Expanded(
              child: Container(
                height: 120,
                color: Colors.yellow,
              ),
            ),
            Expanded(
              child: Container(
                height: 120,
                color: Colors.green,
              ),
            ),
            Container(
              height: 150,
              width: 400,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(75),
                color: Colors.white,
                border: Border.all(
                  width: 5,
                  color: Colors.red,
                ),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 16,
                    color: Colors.white,
                    blurStyle: BlurStyle.outer,
                    spreadRadius: 2,
                  )
                ],
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 85,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 100,
                      width: 85,
                      color: Colors.white,
                    ),
                    Container(
                      height: 100,
                      width: 85,
                      color: Colors.black,
                    ),
                    Container(
                      height: 100,
                      width: 85,
                      color: Colors.pink,
                    ),
                    Container(
                      height: 100,
                      width: 85,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
