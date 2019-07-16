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
      body: myAnimeList(),
    );
  }

  Widget myAnimeList() {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        int itemN = index + 1;
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Center(child: Text("$itemN. Anime item"))),
            Icon(Icons.arrow_right)  
          ],
        );
      },
    );
  }
}
