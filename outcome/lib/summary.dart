import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  const Summary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 360,
          height: 120,
          color: Colors.blue,
          child: Column(
            children: [
              Text("Date"),
              Text(
                "Net Balance:1000",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Text("Income"),
                          SizedBox(
                            height: 5,
                          ),
                          Text("100",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text("Expense"),
                          SizedBox(
                            height: 5,
                          ),
                          Text("100",style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
