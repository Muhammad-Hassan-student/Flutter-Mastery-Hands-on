import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';

//My home page
class Foodhome extends StatelessWidget {
  List<Map<String, dynamic>> menuData = [
    {
      "name": "Chicken Burger",
      "price": 560,
      "rating": 4.5,
      "image":
          "https://easyeat.ancorathemes.com/wp-content/uploads/2020/05/product-3-copyright-1024x1024.png"
    },
    {
      "name": "Black Burger",
      "price": 900,
      "rating": 5.5,
      "image":
          "https://easyeat.ancorathemes.com/wp-content/uploads/2020/05/product-4-copyright-300x300.png"
    },
    {
      "name": "Fish Burger",
      "price": 789,
      "rating": 4.5,
      "image":
          "https://easyeat.ancorathemes.com/wp-content/uploads/2020/05/product-1-copyright.png"
    },
    {
      "name": "Buffalo",
      "price": 999,
      "rating": 4.8,
      "image":
          "https://easyeat.ancorathemes.com/wp-content/uploads/2023/02/product-17-copyright-300x300.png"
    },
    {
      "name": "The FreshMan With Black Bean Corn Salad",
      "price": 1150,
      "rating": 4.5,
      "image":
          "https://redbarnchicken.com/wp-content/uploads/2024/06/img-fav-fresh-withblackbean.png"
    },
    {
      "name": "Panang Curry",
      "price": 999,
      "rating": 4.2,
      "image":
          "https://easyeat.ancorathemes.com/wp-content/uploads/2023/02/product-9-copyright-600x600.png"
    },
    {
      "name": "Green Curry",
      "price": 250,
      "rating": 5.5,
      "image":
          "https://easyeat.ancorathemes.com/wp-content/uploads/2023/02/product-11-copyright.png"
    },
    {
      "name": "Tandoori Chicken",
      "price": 1500,
      "rating": 4.3,
      "image":
          "https://easyeat.ancorathemes.com/wp-content/uploads/2023/02/product-12-copyright-1024x1024.png"
    },
    {
      "name": "Butter Chicken",
      "price": 1790,
      "rating": 4.9,
      "image":
          "https://easyeat.ancorathemes.com/wp-content/uploads/2023/02/product-14-copyright-1024x1024.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
        body: Container(
            child: SingleChildScrollView(
      child: Column(
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
            padding: EdgeInsets.only(left: 20, right: 20),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  //banner 1
                  children: [
                    Container(
                      width: 450,
                      height: 200,
                      child: Image.network(
                        'https://preview.colorlib.com/theme/restaurant/img/d1.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: [
                        Center(
                          child: Text(
                            "Bread Fruit Cheese Sandwich",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Center(
                            child: Text(
                                "inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct."))
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
                      child: Image.network(
                        'https://preview.colorlib.com/theme/restaurant/img/d2.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: [
                        Center(
                          child: Text(
                            "Bread Fruit Cheese Sandwich",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Center(
                            child: Text(
                                "inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct."))
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
                      child: Image.network(
                        'https://preview.colorlib.com/theme/restaurant/img/d3.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: [
                        Center(
                          child: Text(
                            "Bread Fruit Cheese Sandwich",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Center(
                            child: Text(
                                "inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct."))
                      ],
                    )
                  ],
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
          Container(
              child: Text(
            "OUR BEST FOODS",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
          )),
          Container(
            height: 600,
            color: Colors.black,
            padding: EdgeInsets.only(left: 20, right: 20),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  height: 400,
                  width: 100,
                  color: Colors.white,
                  margin: EdgeInsets.all(14),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Image.network(
                              menuData[index]["image"],
                              height: 200,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                      Column(children: [
                        Container(
                          child: Text(
                            menuData[index]["name"],
                            style: TextStyle(fontSize: 24),
                          ),
                          margin: EdgeInsets.only(bottom: 10),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Price: Rs ${menuData[index]["price"]}",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline),
                            ),
                            Text(
                              "Ratiting: ${menuData[index]["rating"]}...",
                              style: TextStyle(
                                  backgroundColor: Colors.black,
                                  fontSize: 18,
                                  color: Colors.yellow),
                            )
                          ],
                        )
                      ]),
                      Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                print("Order Now");
                              },
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 40, right: 40, top: 10, bottom: 10),
                                  child: Text(
                                    "Order Now",
                                    style: TextStyle(fontSize: 18),
                                  ))),
                        ],
                      )
                    ],
                  ),
                );
              },
              itemCount: menuData.length,
            ),
          ),
        ],
      ),
    )));
  }
}
