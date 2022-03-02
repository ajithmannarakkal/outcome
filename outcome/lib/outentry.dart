import 'package:flutter/material.dart';

class EntryOut extends StatefulWidget {
  const EntryOut({Key? key}) : super(key: key);

  @override
  State<EntryOut> createState() => _EntryOutState();
}

class _EntryOutState extends State<EntryOut> {
  DateTime? _datetime;
  String dropdownvalue = 'fuel';
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.red,title: Text("Add Your Expense"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(_datetime == null
                ? 'No date selected'
                : _datetime.toString(),style: TextStyle(color: Colors.red),),
            ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: () {
                  showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2001),
                      lastDate: DateTime(2222))
                      .then((date) {
                    setState(() {
                      _datetime = date!;
                    });
                  });
                },
                child: Text("date")),
            TextField(style: TextStyle(color: Colors.red),
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(style: TextStyle(color: Colors.red),
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 340,
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton<String>(iconEnabledColor: Colors.red,
                    isExpanded: true,
                    value: dropdownvalue,
                    icon: const Icon(Icons.arrow_downward),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                    items: <String>['fuel', 'grocery','hospital','loan','bill payment']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,style: TextStyle(color: Colors.red),),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.red),onPressed: (){}, child: Text("Save"))
          ],
        ),

    ),
    );

  }
}
