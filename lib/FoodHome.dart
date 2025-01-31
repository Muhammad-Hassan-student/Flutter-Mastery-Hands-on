import 'package:flutter/material.dart';

//My home page
class Foodhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.amberAccent,
        //   title: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       Row(
        //
        //         children: [
        //           Container(
        //             height: 30,
        //             width: 40,
        //             // decoration: BoxDecoration(
        //             //   shape: BoxShape.circle, // Circle shape added
        //             // ),
        //             child: ClipOval(
        //               child: Image.asset('assets/images/download.png', fit: BoxFit.contain),
        //             ),
        //           ),Text("Hassan",style: TextStyle(
        //             fontSize: 18,
        //             fontWeight: FontWeight.w600,
        //             color: Colors.black87,
        //           ),)
        //
        //         ],
        //       ),Container(
        //         child: TextButton(onPressed: (){
        //           print("Print");
        //         },child:(Text("Menu",style: TextStyle(
        //           fontSize: 18,
        //           fontWeight: FontWeight.w800,
        //           color: Colors.black87,
        //         ),)),
        //         ),
        //       )
        //     ],
        //   ),
        // ),
        body: Container(

            child:SingleChildScrollView(
              child:  Column(

                children: [
                  SizedBox(height: 5),

                  //Hero Section
                  Container(

                    width: double.infinity,
                    height: 250, // Adjust height as needed
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://cdn.dribbble.com/users/2368465/screenshots/6135676/media/f7de47bcb6c0ae4ebc87e6f4f969f2a8.png?resize=768x576&vertical=center',
                        ),
                        fit: BoxFit.cover, // Image adjust kare
                      ),
                    ),
                    // child: Center(
                    //   child: Text(
                    //     "Overlay Content",
                    //     style: TextStyle(color: Colors.white, fontSize: 20),
                    //   ),
                    // ),
                  ),
                  SizedBox(height: 14),

                  //Banners
                  Container(
                    //Banners
                    padding: EdgeInsets.only(left: 20,right: 20),


                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Column(
                          //banner 1
                          children: [
                            Container(
                              width: 450,
                              height: 200,

                              child: Image.network('https://preview.colorlib.com/theme/restaurant/img/d1.jpg',fit: BoxFit.cover,),
                            ),
                            Column(

                              children: [

                                Center(
                                  child: Text("Bread Fruit Cheese Sandwich",style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600
                                  ),),
                                ),
                                Center(child: Text("inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct."))
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 30),
                        Column(
                          //banner 1
                          children: [
                            Container(
                              width: 450,
                              height: 200,

                              child: Image.network('https://preview.colorlib.com/theme/restaurant/img/d2.jpg',fit: BoxFit.cover,),
                            ),
                            Column(
                              children: [
                                Center(
                                  child: Text("Bread Fruit Cheese Sandwich",style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600
                                  ),),
                                ),
                                Center(child: Text("inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct."))
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 30),
                        Column(
                          //banner 1
                          children: [
                            Container(
                              width: 450,
                              height: 200,

                              child: Image.network('https://preview.colorlib.com/theme/restaurant/img/d3.jpg',fit: BoxFit.cover,),
                            ),
                            Column(
                              children: [
                                Center(
                                  child: Text("Bread Fruit Cheese Sandwich",style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600
                                  ),),
                                ),
                                Center(child: Text("inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct."))
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 20),



                      ],
                    ),
                  )

                ],
              ),
            )
        )
    );
  }

}