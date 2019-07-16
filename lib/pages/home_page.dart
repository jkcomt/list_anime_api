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
            Container(
              padding: EdgeInsets.all(20),
              child: Icon(Icons.account_circle)),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Text("$itemN. Anime item"))),
            Container(
              padding: EdgeInsets.all(20),
              child: Icon(Icons.arrow_right))
          ],
        );
      },
    );
  }
}
