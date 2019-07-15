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

  Widget myAnimeList(){
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index){
        int itemN = index+1;
        return ListTile(
          leading: Icon(Icons.account_circle),
          title: Text(itemN.toString() +". Anime Item $index"),
          trailing: Icon(Icons.keyboard_arrow_right),
        );
      },
    );
  }

}
