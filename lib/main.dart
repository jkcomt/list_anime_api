import 'package:flutter/material.dart';

void main() => runApp(MyAnimeApp());

class MyAnimeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text("Hola Mundo",
          style: TextStyle(
            color: Colors.black
          ),
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}

