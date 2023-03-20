import 'dart:convert';
import 'package:http/http.dart' as http ;



void main() async{
  var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
  Task taskFromJson = Task.fromJson(json.decode(response.body));
  print("${taskFromJson.body}, ${taskFromJson.title}, ${taskFromJson.id}, ${taskFromJson.userId}");
}



class Task {
  Task({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  int? userId;
  int? id;
  String? title;
  String? body;

  factory Task.fromJson(Map<String, dynamic> json) => Task(
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