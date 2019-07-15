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
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text("1. Anime Item"),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text("2. Anime Item"),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text("3. Anime Item"),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.account_circle),          
          title: Text("4. Anime Item"),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text("5. Anime Item"),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text("6. Anime Item"),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text("7. Anime Item"),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.account_circle),          
          title: Text("8. Anime Item"),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text("9. Anime Item"),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text("10. Anime Item"),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text("11. Anime Item"),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.account_circle),          
          title: Text("12. Anime Item"),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text("13. Anime Item"),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text("14. Anime Item"),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text("15. Anime Item"),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){},
        ),
        ListTile(
          leading: Icon(Icons.account_circle),          
          title: Text("16. Anime Item"),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){},
        )
      ],
    );
  }

}
