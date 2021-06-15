import 'package:firstapp/routes.dart';
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
                onChanged: (value) {
                  name = value;
                  setState(() {});
                  // Navigator.pushNamed(context, MyRoutes.loginRoute);
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
        InkWell(
          onTap: () {
            isClicked = true;
            setState(() {});
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            height: isClicked ? 50 : 150,
            width: 50,
            color: Colors.purple,
            child: Text("Login"),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.purple,
              shape: isClicked ? BoxShape.circle : BoxShape.rectangle,
            ),
          ),
        )
      ],
    ));
  }
}
