import 'package:flutter/material.dart';
import 'package:list_anime_api/pages/home_page.dart';

void main() => runApp(MyAnimeApp());

class MyAnimeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: HomePage(),
    );
  }
}
