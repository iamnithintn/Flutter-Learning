import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async{
  var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  Welcome data = Welcome.fromJson(jsonDecode(response.body));
  print(data.id);
}

class Welcome {
  Welcome({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  int? userId;
  int? id;
  String? title;
  String? body;

  factory Welcome.fromJson(Map <String, dynamic> json) => Welcome(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
