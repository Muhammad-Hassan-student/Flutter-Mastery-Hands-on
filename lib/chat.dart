import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';

class MyChat extends StatelessWidget {
  List<Map<String, dynamic>> chatDetail = [
    {
      "name": "Muhammad",
      "latestmessage": "Hi Hello kese ho",
    },
    {"name": "Muhammad", "latestmessage": "Hi Hello kese ho"},
    {"name": "Muhammad", "latestmessage": "Hi Hello kese ho"},
    {"name": "Muhammad", "latestmessage": "Hi Hello kese ho"},
    {"name": "Muhammad", "latestmessage": "Hi Hello kese ho"},
    {"name": "Muhammad", "latestmessage": "Hi Hello kese ho"},
    {"name": "Muhammad", "latestmessage": "Hi Hello kese ho"},
    {"name": "Muhammad", "latestmessage": "Hi Hello kese ho"},
    {"name": "Muhammad", "latestmessage": "Hi Hello kese ho"},
    {"name": "Muhammad", "latestmessage": "Hi Hello kese ho"},
    {"name": "Muhammad", "latestmessage": "Hi Hello kese ho"},
    {"name": "Muhammad", "latestmessage": "Hi Hello kese ho"},
    {"name": "Muhammad", "latestmessage": "Hi Hello kese ho"},
    {"name": "Muhammad", "latestmessage": "Hi Hello kese ho"},
    {"name": "Muhammad", "latestmessage": "Hi Hello kese ho"},
    {"name": "Muhammad", "latestmessage": "Hi Hello kese ho"},
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultScaffold(
        body: ListView.separated(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  // leading: Text('$index'),
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/hassan-profile.jpg"),
                  ),
                  title: Text('${chatDetail[index]["name"]}'),
                  subtitle: Text("${chatDetail[index]["latestmessage"]}"),
                  trailing: Icon(Icons.messenger_outline),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                  // height: 50,
                  // color: Colors.grey,
                  // thickness: 1,
                  );
            },
            itemCount: chatDetail.length));
  }
}
