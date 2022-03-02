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
          decoration: BoxDecoration(
              color: Colors.tealAccent,
              border: Border.all(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(colors: [Colors.grey,Colors.indigo]),
            boxShadow: const[BoxShadow(color: Colors.lightGreen,blurRadius: 10,offset: Offset(2, 5))]
          ),
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
                          Text(
                            "100",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
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
                          Text(
                            "100",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
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
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            backgroundColor: Colors.green,
            onPressed: () {
              Navigator.of(context).pushNamed("entry");
            },
            icon: const Icon(Icons.add),
            label: const Text("Income"),
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton.extended(
            backgroundColor: Colors.red,
            onPressed: () {
              Navigator.of(context).pushNamed("outentry");
            },
            icon: const Icon(Icons.remove),
            label: const Text("Expense"),
          )
        ],
      ),
    );
  }
}
