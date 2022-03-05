import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  const Summary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 45,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),),
          boxShadow: [BoxShadow(blurRadius: 20,color: Colors.grey,spreadRadius: 1)]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              navBar(Icons.home, isSelected: true),
              navBar(Icons.picture_as_pdf),
              navBar(Icons.bar_chart),

              navBar(Icons.notifications),

            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: 360,
            height: 120,
            decoration: BoxDecoration(
                color: Colors.tealAccent,
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(10),
                gradient:
                    const LinearGradient(colors: [Colors.grey, Colors.indigo]),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.lightGreen,
                      blurRadius: 10,
                      offset: Offset(2, 5))
                ]),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                          crossAxisAlignment: CrossAxisAlignment.end,
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
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            color: Colors.white,
          )),
        ],
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

  Container navBar(IconData icon, {isSelected = false}) {
    return Container(
      decoration: BoxDecoration(
          color: isSelected ? Colors.green : Colors.teal,
          shape: BoxShape.circle,
          boxShadow: isSelected
              ? [BoxShadow(color: Colors.grey, blurRadius: 10, spreadRadius: 1)]
              : []),
      height: 50,
      width: 50,
      child: Icon(
        icon,
        color: isSelected ? Colors.white : Colors.black,
      ),
    );
  }
}
