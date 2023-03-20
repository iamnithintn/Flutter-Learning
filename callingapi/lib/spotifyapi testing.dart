import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {

  var response = await http.get(Uri.parse('https://api.spotify.com/v1/artists'));

  Artist artist = Artist.fromJson(jsonDecode(response.body));

  print("${artist.name}");

}


// class Task {
//   Task({
//     this.artists,
//   });
//
//   List<Artist>? artists;
//
//   factory Task.fromJson(Map<String, dynamic> json) => Task(
//     artists: json["artists"] == null ? [] : List<Artist>.from(json["artists"]!.map((x) => Artist.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "artists": artists == null ? [] : List<dynamic>.from(artists!.map((x) => x.toJson())),
//   };
// }
//
// class Artist {
//   Artist({
//     this.externalUrls,
//     this.followers,
//     this.genres,
//     this.href,
//     this.id,
//     this.images,
//     this.name,
//     this.popularity,
//     this.type,
//     this.uri,
//   });
//
//   ExternalUrls? externalUrls;
//   ExternalUrls? followers;
//   List<dynamic>? genres;
//   String? href;
//   String? id;
//   List<dynamic>? images;
//   String? name;
//   int? popularity;
//   String? type;
//   String? uri;
//
//   factory Artist.fromJson(Map<String, dynamic> json) => Artist(
//     externalUrls: json["external_urls"] == null ? null : ExternalUrls.fromJson(json["external_urls"]),
//     followers: json["followers"] == null ? null : ExternalUrls.fromJson(json["followers"]),
//     genres: json["genres"] == null ? [] : List<dynamic>.from(json["genres"]!.map((x) => x)),
//     href: json["href"],
//     id: json["id"],
//     images: json["images"] == null ? [] : List<dynamic>.from(json["images"]!.map((x) => x)),
//     name: json["name"],
//     popularity: json["popularity"],
//     type: json["type"],
//     uri: json["uri"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "external_urls": externalUrls?.toJson(),
//     "followers": followers?.toJson(),
//     "genres": genres == null ? [] : List<dynamic>.from(genres!.map((x) => x)),
//     "href": href,
//     "id": id,
//     "images": images == null ? [] : List<dynamic>.from(images!.map((x) => x)),
//     "name": name,
//     "popularity": popularity,
//     "type": type,
//     "uri": uri,
//   };
// }
//
// class ExternalUrls {
//   ExternalUrls();
//
//   factory ExternalUrls.fromJson(Map<String, dynamic> json) => ExternalUrls(
//   );
//
//   Map<String, dynamic> toJson() => {
//   };
// }

class Task {
  Task({
    required this.artists,
  });

  List<Artist> artists;

  factory Task.fromJson(Map<String, dynamic> json) => Task(
    artists: List<Artist>.from(json["artists"].map((x) => Artist.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "artists": List<dynamic>.from(artists.map((x) => x.toJson())),
  };
}

class Artist {
  Artist({
    required this.externalUrls,
    required this.followers,
    required this.genres,
    required this.href,
    required this.id,
    required this.images,
    required this.name,
    required this.popularity,
    required this.type,
    required this.uri,
  });

  ExternalUrls externalUrls;
  ExternalUrls followers;
  List<dynamic> genres;
  String href;
  String id;
  List<dynamic> images;
  String name;
  int popularity;
  String type;
  String uri;

  factory Artist.fromJson(Map<String, dynamic> json) => Artist(
    externalUrls: ExternalUrls.fromJson(json["external_urls"]),
    followers: ExternalUrls.fromJson(json["followers"]),
    genres: List<dynamic>.from(json["genres"].map((x) => x)),
    href: json["href"],
    id: json["id"],
    images: List<dynamic>.from(json["images"].map((x) => x)),
    name: json["name"],
    popularity: json["popularity"],
    type: json["type"],
    uri: json["uri"],
  );

  Map<String, dynamic> toJson() => {
    "external_urls": externalUrls.toJson(),
    "followers": followers.toJson(),
    "genres": List<dynamic>.from(genres.map((x) => x)),
    "href": href,
    "id": id,
    "images": List<dynamic>.from(images.map((x) => x)),
    "name": name,
    "popularity": popularity,
    "type": type,
    "uri": uri,
  };
}

class ExternalUrls {
  ExternalUrls();

  factory ExternalUrls.fromJson(Map<String, dynamic> json) => ExternalUrls(
  );

  Map<String, dynamic> toJson() => {
  };
}
