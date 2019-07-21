import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:list_anime_api/model/anime.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // loadAnimes();
  }

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
 
  Future<String> _loadAnimesAsset() async {
    return await rootBundle.loadString('assets/data/topAnimesData.json');
  }

  Future<ListAnime> loadAnimes() async {
    //agregamos un delay para probar el tiempo de espera
    return Future.delayed(Duration(seconds:3),() async {
      ListAnime anime;
      String jsonString = await _loadAnimesAsset();
      final List<dynamic> jsonResponse = json.decode(jsonString);
      anime = new ListAnime.fromJson(jsonResponse);
      return anime;
    }
    );
  }

  Widget myAnimeList() {
    return FutureBuilder(
      initialData: [],
      builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.done){
            return ListView.builder(
            itemCount:  snapshot.data.animes.length,
            itemBuilder: (context, index) {
              Anime anime = snapshot.data.animes[index];
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
                            child: Text(anime.name))),
                    Container(child: anime.ageRange >= 18 ? 
                      Text("M",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)) : 
                      Text("PG",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold))
                    ),
                    Container(
                        padding: EdgeInsets.all(20),
                        child: Icon(Icons.keyboard_arrow_right))
                  ],
                ),
              );
            },
          );
          }else{
            return Container(child:Center(child:Text("Loading...")));
          }},
       future: loadAnimes()
    );
  }
}
