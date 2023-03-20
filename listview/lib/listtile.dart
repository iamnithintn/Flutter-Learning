import 'package:flutter/material.dart';


class LearningListTile extends StatelessWidget{

  var arrNames = ['hi', 'bye', 'kai', 'sai', 'lai', 'guy'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List-Tile"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text('${index+1}'),
            title: Text(arrNames[index]),
            subtitle: Text('Names'),
            trailing: Icon(Icons.circle_notifications_sharp),
          );
        },
        itemCount: arrNames.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(height: 20, thickness: 1,);
        },
      ),
    );
  }

}