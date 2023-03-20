import 'package:http/http.dart' as http;
import 'dart:convert';


void main() async {

  var response = await http.get(Uri.parse('https://bible-api.com/BOOK+CHAPTER:VERSE'));
  Task data = Task.fromJson(jsonDecode(response.body));
  print("${data.text}, ${data.reference}, ${data.translationId}, ${data.translationName}, ${data.translationNote}, ${data.verses}");
}



class Task {
  Task({
    this.reference,
    this.verses,
    this.text,
    this.translationId,
    this.translationName,
    this.translationNote,
  });

  String? reference;
  List<Verse>? verses;
  String? text;
  String? translationId;
  String? translationName;
  String? translationNote;

  factory Task.fromJson(Map<String, dynamic> json) => Task(
    reference: json["reference"],
    verses: json["verses"] == null ? [] : List<Verse>.from(json["verses"]!.map((x) => Verse.fromJson(x))),
    text: json["text"],
    translationId: json["translation_id"],
    translationName: json["translation_name"],
    translationNote: json["translation_note"],
  );

  Map<String, dynamic> toJson() => {
    "reference": reference,
    "verses": verses == null ? [] : List<dynamic>.from(verses!.map((x) => x.toJson())),
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
