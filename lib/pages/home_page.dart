import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);
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

  static List<String> topAnimes = [
    "One Punch Man 2",
    "Tate no Yuusha no Nariagari",
    "One Piece",
    "Boku no Hero Academia 2",
    "Boku no Hero Academia",
    "Boku no Hero Academia 3",
    "One Punch Man",
    "Attack on Titan",
    "Hunter x Hunter (2011)",
    "Fullmetal Alchemist: Brotherhood"
  ];

  Widget myAnimeList() {
    return ListView.builder(
      itemCount: topAnimes.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(20),
                  child: Icon(Icons.account_circle)),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(20),
                      child: Text(topAnimes[index]))),
              Container(
                  padding: EdgeInsets.all(20), child: Icon(Icons.arrow_right))
            ],
          ),
        );
      },
    );
  }
}
