import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  var response =
      await http.get(Uri.parse('https://bible-api.com/BOOK+CHAPTER:VERSE'));
  Verse welcomeFromJson = Verse.fromJson(json.decode(response.body));
  print(welcomeFromJson.bookId);
}

class Welcome {
  Welcome({
    this.reference,
    required this.verses,
    this.text,
    this.translationId,
    this.translationName,
    this.translationNote,
  });

  String? reference;
  List<Verse> verses;
  String? text;
  String? translationId;
  String? translationName;
  String? translationNote;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        reference: json["reference"],
        verses: List<Verse>.from(json["verses"].map((x) => Verse.fromJson(x))),
        text: json["text"],
        translationId: json["translation_id"],
        translationName: json["translation_name"],
        translationNote: json["translation_note"],
      );

  Map<String, dynamic> toJson() => {
        "reference": reference,
        "verses": List<dynamic>.from(verses.map((x) => x.toJson())),
        "text": text,
        "translation_id": translationId,
        "translation_name": translationName,
        "translation_note": translationNote,
      };
}

class Verse {
  Verse({
    this.bookId,
    this.bookName,
    this.chapter,
    this.verse,
    this.text,
  });

  String? bookId;
  String? bookName;
  int? chapter;
  int? verse;
  String? text;

  factory Verse.fromJson(Map<String, dynamic> json) => Verse(
        bookId: json["book_id"],
        bookName: json["book_name"],
        chapter: json["chapter"],
        verse: json["verse"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "book_id": bookId,
        "book_name": bookName,
        "chapter": chapter,
        "verse": verse,
        "text": text,
      };
}
