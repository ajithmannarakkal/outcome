import 'package:flutter/material.dart';
import 'package:outcome/widgets.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _theme=false;
  bool _notify=false;
  bool _applock=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Column(children: [
        ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage(
              'https://i.insider.com/61a10537ee9795001883f280?width=1136&format=jpeg'),),
          title: Text('Ajith'),
          subtitle: Text('+91 8129953094'),
          trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.blue,)),
        ),

        SwitchListTile(activeColor: Colors.blue,title: Text("Dark Theme"),value: _theme, onChanged: (bool value){
          setState(() {
            _theme=value;

          });
        }),SwitchListTile(activeColor: Colors.blue,
        title: Text("Notification Widget"),value: _notify, onChanged: (bool value)
    {
      setState(() {
_notify=value;
      });
    }
        ),
        WidgetOne(color: Colors.blue,icons: Icons.language,title: 'Change Language',onTap: (){},),
        SizedBox(height: 15,),
        WidgetOne(color: Colors.blue,icons: Icons.help,title: 'Help',onTap: (){},),
        SizedBox(height: 15,),
        WidgetOne(color: Colors.blue,icons: Icons.share,title: 'Invite a Friend',onTap: (){},),
        SizedBox(height: 15,),
        WidgetOne(color: Colors.red,icons: Icons.logout,title: 'Logout',onTap: (){},),
        SizedBox(height: 15,),
        WidgetOne(color: Colors.red,icons: Icons.delete_forever,title: 'Delete My Account',onTap: (){},),

        SizedBox(height: 15,),
        WidgetOne(color: Colors.blue,icons: Icons.info,title: 'About Us',onTap: (){},),


      ],)
    );
  }
}
