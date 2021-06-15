import "package:flutter/material.dart"

void main(List<String> args) {
  runApp(App());
}


class class App  extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(title: Text("First App"),) ,
        ),
    );
  }
}