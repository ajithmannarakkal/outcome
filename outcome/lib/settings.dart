import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: ListTile(
        leading: CircleAvatar(),
        title: Text('Ajith'),
        subtitle: Text('+91 8129953094'),
        trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
      ),
    );
  }
}
