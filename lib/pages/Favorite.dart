import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/Widgets/Title.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyFavorite extends StatelessWidget {
  const MyFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultScaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  height: 3,
                  width: 60,
                    margin: EdgeInsets.only(right: 10),
                    color: Colors.pinkAccent,

 ),
                MyTitle(),
              ],
            ),
            Stack(
              children: [
                Container(
                  height: 100,
                  width: 400,
                  color: Colors.blue,
                ),
                Positioned(
                  left: 20,
                  top: 20,
                  bottom: 20,
                  right: 20,
                  child: Container(
                    height: 150,
                    width: 150,
                    color: Colors.red,
                  ),
                ),
                Positioned(
                  left: 40,
                  top: 40,
                  bottom: 40,
                  right: 40,
                  child: Container(
                    height: 80,
                    width: 80,
                    color: Colors.yellowAccent,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                      boxShadow:[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                      )
                    ]
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      boxShadow:[
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                        )
                      ]
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.black87,
                      boxShadow:[
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                        )
                      ]
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      boxShadow:[
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                        )
                      ]
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      boxShadow:[
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                        )
                      ]
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.yellowAccent,
                      boxShadow:[
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                        )
                      ]
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.yellowAccent,
                      boxShadow:[
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                        )
                      ]
                  ),
                ),
              ],
            ),
            Text("adad"),
            RichText(
              text: TextSpan(text: "hi ",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 25
                ),
                children:<InlineSpan>[
                  TextSpan(text: "Hassan",style: TextStyle(color: Colors.black, fontFamily: "Charmonman",fontWeight: FontWeight.w700)),
                  WidgetSpan(child: FaIcon(FontAwesomeIcons.heartPulse,color: Colors.red,)),
                  TextSpan(text: "Shahniya",style: TextStyle(color: Colors.black, fontFamily: "Charmonman",fontWeight: FontWeight.w700)),

                ]
              ),
            ),

          ]
        ),
      ),
    );
  }
}
