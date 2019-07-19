class Anime{

  String name;

  Anime({this.name});

  factory Anime.fromJson(Map<String,dynamic> parsedJson){
    return Anime(
      name : parsedJson['animeName'],
    );
  }

}

class ListAnime{

  final List<Anime> animes;

  ListAnime({
    this.animes
  });

  factory ListAnime.fromJson(List<dynamic> parsedJson){
    List<Anime> animes = new List<Anime>();
    animes = parsedJson.map((i) => Anime.fromJson(i)).toList();

    return new ListAnime(
      animes: animes
    );
    }
}