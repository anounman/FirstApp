import 'package:firstapp/homepage.dart';
import 'package:firstapp/login_page.dart';
import "package:flutter/material.dart";

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.purple),
      home: Text("Hello Test"),
    );
  }
}
