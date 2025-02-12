import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/main.dart';
import 'package:intl/intl.dart';

class Menu extends StatelessWidget {
  var time = DateTime.now();

  Menu({super.key});

  @override
  Widget build(BuildContext context) {
    var arrColors = [
      Colors.red,
      Colors.black,
      Colors.blue,
      Colors.red,
      Colors.pink,
      Colors.purple,
      Colors.orange
    ];
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

    return DefaultScaffold(
        body: SizedBox(
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //time zone
                  Text(
                    "Zone ${time.timeZoneName}",
                    style: const TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Charmonman'),
                  ),
                  Text(
                      "Current time: ${DateFormat('yMMMMEEEEd').format(time)}"),
                  const SizedBox(
                    height: 20,
                  ),
                  //GridView.count
                  Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      height: 400,
                      child: GridView.count(
                        //products how many colums divided
                        crossAxisCount: 4,
                        //Spacing by horizontally down of profuct between
                        mainAxisSpacing: 10,
                        //spacing in columns
                        crossAxisSpacing: 10,
                        children: [
                          Container(
                            color: arrColors[0],
                          ),
                          Container(
                            color: arrColors[1],
                          ),
                          Container(
                            color: arrColors[2],
                          ),
                          Container(
                            color: arrColors[3],
                          ),
                          Container(
                            color: arrColors[4],
                          ),
                          Container(
                            color: arrColors[5],
                          ),
                          Container(
                            color: arrColors[6],
                          ),
                        ],
                      )),
                  //GridView.extent
                  Container(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    height: 400,
                    child: GridView.extent(
                      //behalf on width of product
                      maxCrossAxisExtent: 50,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      children: [
                        Container(
                          color: arrColors[0],
                        ),
                        Container(
                          color: arrColors[1],
                        ),
                        Container(
                          color: arrColors[2],
                        ),
                        Container(
                          color: arrColors[3],
                        ),
                        Container(
                          color: arrColors[4],
                        ),
                        Container(
                          color: arrColors[5],
                        ),
                        Container(
                          color: arrColors[6],
                        ),
                      ],
                    ),
                  ),

                  //GridView.builder
                  SizedBox(
                    height: 600,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3),
                      itemBuilder: (context, index) {
                        return Container(
                            child: Column(children: [
                          Container(
                            height: 100,
                            width: 100,
                            color: arrColors[index],
                          )
                        ]));
                      },
                      itemCount: arrColors.length,
                    ),
                  )
                ],
              ),
            )));
  }
}
