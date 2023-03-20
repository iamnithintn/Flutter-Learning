import 'dart:convert' as convert;
import 'package:http/http.dart' as http;


void main() async{
  var response = await http.get(Uri.parse('https://api.waifu.im/'));
  Tag tag = Tag.fromJson(convert.jsonDecode(response.body));
  print(tag.name);

}

class Welcome {
  Welcome({
    required this.images,
  });

  List<Image> images;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
  };
}

class Image {
  Image({
    required this.signature,
    required this.extension,
    required this.imageId,
    required this.favorites,
    required this.dominantColor,
    required this.source,
    required this.uploadedAt,
    this.likedAt,
    required this.isNsfw,
    required this.width,
    required this.height,
    required this.url,
    required this.previewUrl,
    required this.tags,
  });

  String signature;
  String extension;
  int imageId;
  int favorites;
  String dominantColor;
  String source;
  DateTime uploadedAt;
  dynamic likedAt;
  bool isNsfw;
  int width;
  int height;
  String url;
  String previewUrl;
  List<Tag> tags;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    signature: json["signature"],
    extension: json["extension"],
    imageId: json["image_id"],
    favorites: json["favorites"],
    dominantColor: json["dominant_color"],
    source: json["source"],
    uploadedAt: DateTime.parse(json["uploaded_at"]),
    likedAt: json["liked_at"],
    isNsfw: json["is_nsfw"],
    width: json["width"],
    height: json["height"],
    url: json["url"],
    previewUrl: json["preview_url"],
    tags: List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "signature": signature,
    "extension": extension,
    "image_id": imageId,
    "favorites": favorites,
    "dominant_color": dominantColor,
    "source": source,
    "uploaded_at": uploadedAt.toIso8601String(),
    "liked_at": likedAt,
    "is_nsfw": isNsfw,
    "width": width,
    "height": height,
    "url": url,
    "preview_url": previewUrl,
    "tags": List<dynamic>.from(tags.map((x) => x.toJson())),
  };
}

class Tag {
  Tag({
    required this.tagId,
    required this.name,
    required this.description,
    required this.isNsfw,
  });

  int tagId;
  String name;
  String description;
  bool isNsfw;

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
    tagId: json["tag_id"],
    name: json["name"],
    description: json["description"],
    isNsfw: json["is_nsfw"],
  );

  Map<String, dynamic> toJson() => {
    "tag_id": tagId,
    "name": name,
    "description": description,
    "is_nsfw": isNsfw,
  };
}
