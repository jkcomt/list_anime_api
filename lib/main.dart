import 'package:flutter/material.dart';

void main() => runApp(MyAnimeApp());

class MyAnimeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Center(child: Text("My Anime App")),
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: Text(
              "Hola Mundo",
              style: TextStyle(color: Colors.black,fontSize: 20),
              textDirection: TextDirection.ltr,
            ),
          ),
        ),
      ),
    );
  }
}
