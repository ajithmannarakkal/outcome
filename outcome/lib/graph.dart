import 'package:flutter/material.dart';

class Graph extends StatelessWidget {
  const Graph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    const Center(child: Text("press"),),
    floatingActionButton: FloatingActionButton(onPressed: (){}
      ,
    child: const Icon(Icons.picture_as_pdf),),);
  }
}
