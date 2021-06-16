import 'package:flutter/material.dart';
import 'package:firstapp/utils/routes.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Image.asset(
          "assets/images/wallpaper.png",
          fit: BoxFit.scaleDown,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Welcome $name",
          style: TextStyle(
            color: Colors.purple,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 20,
          ),
          child: Column(
            children: [
              TextFormField(
                onChanged: (value)  {
                  name = value;
                  setState(() {});
            },
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  labelText: "Username",
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter password",
                  labelText: "Password",
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
      Material(
          color: Colors.purple,       
          borderRadius: BorderRadius.circular(isClicked?50: 8),
              child: InkWell(
              onTap: () async{
                setState(() {
                  isClicked = true;
                });
                await Future.delayed(Duration(seconds: 1));
                await Navigator.pushNamed(context, MyRoutes.homeRoute);
                setState (() {
                  isClicked = false;
                });
                
              },
              child: AnimatedContainer(
              duration: Duration(seconds: 1),
              width: isClicked?50 : 150,
              height: 50,
              child:Center(child: 
              isClicked?Icon(Icons.done):
              Text("Login" , style: TextStyle(color: Colors.white),), ) ,
              
            ),
          ),
        )
      ],
    ));
  }
}