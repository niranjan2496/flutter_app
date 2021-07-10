
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
          children:[
            SizedBox(
              height: 70,
            ),
            Image.asset("assets/images/loginlogo.png",width:212,height:212,fit:BoxFit.cover,),
            Text("wecome"),
           SizedBox(
             height: 20,
           ),
            Padding(
                padding:EdgeInsets.symmetric(vertical: 20,horizontal: 30),
          child:Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter User Name",
                    labelText: "User Name"
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password"
                ),
              )
            ],
          )),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: (){
                  print("signed");
                },
                child:Text("Sign in"),
                style: TextButton.styleFrom(),
            )
          ]
        )
    );
  }
}
