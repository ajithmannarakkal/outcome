import 'package:flutter/material.dart';
import 'package:outcome/widgets.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i.insider.com/61a10537ee9795001883f280?width=1136&format=jpeg'),

            ),
            title: Text("Elon Musk"),subtitle: Text("+91 8129953094"),
            trailing: Icon(Icons.verified,color: Colors.blueAccent,),
          ),
          WidgetOne(color: Colors.red,icons: Icons.logout, title: "Logout",onTap: () {  },)
        ],
      ),
    );
  }
}
