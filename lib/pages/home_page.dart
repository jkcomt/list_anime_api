import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(child: Text("My Anime App")),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text(
            "Hola Mundo",
            style: TextStyle(color: Colors.black, fontSize: 20),
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
    );
  }
}
