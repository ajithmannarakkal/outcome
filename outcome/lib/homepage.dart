import 'package:flutter/material.dart';
import 'package:outcome/profile.dart';
import 'package:outcome/settings.dart';
import 'package:outcome/transactions.dart';

import 'graph.dart';
import 'summary.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                return ProfileView();
              }
              ));
            },
            icon: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  'https://i.insider.com/61a10537ee9795001883f280?width=1136&format=jpeg'),
            ),
          ),
          title: Text('Welcome back Elon,'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(onPressed: () {
                Navigator.of(context).pushNamed('sett');
              }, icon: Icon(Icons.settings)
              ),
            )
          ],
          bottom: TabBar(tabs: [
            Tab(text: "Summary",),
            Tab(text: "Transaction"),
            Tab(text: "Graphical",)
          ],),

        ),
        body: Scaffold(
          body: TabBarView(children: [
            Summary(), Transactions(), Graph(),
          ],),
        ),
      ),
    );
  }
}
