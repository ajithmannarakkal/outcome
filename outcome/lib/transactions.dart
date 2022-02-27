import 'package:flutter/material.dart';

class Transactions extends StatelessWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    const Center(child: Text("press"),),
      floatingActionButton: FloatingActionButton(onPressed: (){}
        ,
        child: const Icon(Icons.add),),);
  }
}
