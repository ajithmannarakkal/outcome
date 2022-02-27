import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  const Summary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    const Center(child: Text("press"),),
      floatingActionButton: FloatingActionButton(onPressed: (){}
        ,
        child: const Icon(Icons.add),),);
  }
}
