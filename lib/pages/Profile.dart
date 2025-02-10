import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';

class ProfilePage extends StatelessWidget {
  var username = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
        body: Column(
      children: [
        SizedBox(
          height: 20, 
        ),
        //Title of page
        Text(
          "Sign up",
          style: TextStyle(
            fontSize: 50,
            color: Colors.blue,
            fontFamily: 'Charmonman',
            fontWeight: FontWeight.w700,
          ),
        ),
        Center(
          child: Container(
            width: 300,
            margin: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                //Username
                TextField(
                  controller: username,
                  decoration: InputDecoration(
                      hintText: "Username",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.green,
                          )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.deepOrange,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.blueAccent)),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                              BorderSide(width: 2, color: Colors.black87)),
                      suffixIcon: Icon(Icons.man)),
                ),
                SizedBox(
                  height: 20,
                ),
                //email
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                      hintText: "Email",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.green,
                          )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.deepOrange,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.blueAccent)),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                              BorderSide(width: 2, color: Colors.black87)),
                      suffixIcon: Icon(Icons.email)),
                ),
                SizedBox(
                  height: 20,
                ),
                //password
                TextField(
                  controller: password,
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      hintText: "* * * * * * * *",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.green,
                          )),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.deepOrange,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.blueAccent)),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                              BorderSide(width: 2, color: Colors.black87)),
                      suffixIcon: Icon(Icons.password)),
                ),
                SizedBox(
                  height: 20,
                ),
                //Time
                Container(
                  child: Row(
                    children: [
                      OutlinedButton(
                          onPressed: () async {
                            DateTime? showDateTime = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1965),
                              lastDate: DateTime.now(),
                            );
                            if (showDateTime != null) {
                              print("Day: ${showDateTime?.day}");
                            }
                          },
                          child: Text("Date of birth")),
                      Container(
                        margin: EdgeInsets.only(left: 22),
                        width: 150,
                        child: Text(
                          "Input Date of birth from your ID card",
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                ElevatedButton(
                  onPressed: () {
                    String uUsername = username.text;
                    String uEmail = email.text;
                    String uPassword = password.text;

                    print("Sign up successfully *****");
                    print(
                        "Username: $uUsername \n Email: $uEmail \n Password: $password ");
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60, right: 60),
                    child: Text(
                      "Sign up",
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
