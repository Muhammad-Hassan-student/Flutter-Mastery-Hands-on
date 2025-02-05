import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';

class ProfilePage extends StatelessWidget{
  var username = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(body: Container(
      margin: EdgeInsets.only(top: 80),
      child: Column(

        children: [

          //Title of page
          Text("Sign up",style: TextStyle(
            fontSize: 50,
            color: Colors.blue,
            fontFamily: 'Charmonman',
            fontWeight: FontWeight.w700,
          ),),
         Center(
           child: Container(
             width: 300,
             margin: EdgeInsets.only(top: 30),
             child:  Column(
               children: [
                 TextField(
                      controller: username,
                   decoration: InputDecoration(
                       hintText: "Username",
                     focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(12),
                       borderSide: BorderSide(
                         color: Colors.green,
                       )
                     ),
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(12),
                       borderSide: BorderSide(
                         color: Colors.deepOrange,
                       )
                     ),
                     enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                       borderSide: BorderSide(
                         color: Colors.blueAccent
                       )
                     ),
                     disabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(5),
                       borderSide: BorderSide(
                         width: 2,
                         color: Colors.black87
                       )
                     ),
                      suffixIcon: Icon(Icons.man)
                   ),

                 ),
                 SizedBox(height: 20,),

                 TextField(
                   controller: email,
                   decoration: InputDecoration(
                       hintText: "Email",
                       focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(12),
                           borderSide: BorderSide(
                             color: Colors.green,
                           )
                       ),
                       border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(12),
                           borderSide: BorderSide(
                             color: Colors.deepOrange,
                           )
                       ),
                       enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(12),
                           borderSide: BorderSide(
                               color: Colors.blueAccent
                           )
                       ),
                       disabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5),
                           borderSide: BorderSide(
                               width: 2,
                               color: Colors.black87
                           )
                       ),
                       suffixIcon: Icon(Icons.email)
                   ),

                 ),
                    SizedBox(height: 20,),
                 TextField(
                        controller: password,
                      obscureText:true,
                   obscuringCharacter: "*",

                   decoration: InputDecoration(

                        hintText: "* * * * * * * *",
                       focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(12),
                           borderSide: BorderSide(
                             color: Colors.green,
                           )
                       ),
                       border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(12),
                           borderSide: BorderSide(
                             color: Colors.deepOrange,
                           )
                       ),
                       enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(12),
                           borderSide: BorderSide(
                               color: Colors.blueAccent
                           )
                       ),
                       disabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5),
                           borderSide: BorderSide(
                               width: 2,
                               color: Colors.black87
                           )
                       ),
                       suffixIcon: Icon(Icons.password)
                   ),

                 ),
                 SizedBox(height: 14,),
                 ElevatedButton(onPressed: (){
                   String uUsername = username.text;
                   String uEmail = email.text;
                   String uPassword = password.text;

                   print("Sign up successfully *****");
                   print("Username: $uUsername \n Email: $uEmail \n Password: $password ");
                 }, child:  Padding(
                   padding: const EdgeInsets.only(left: 60,right: 60),
                   child: Text("Sign up",),

                 ),)

               ],
             ),
           ),
         )
        ],
      ),
    ));
    
  }
}