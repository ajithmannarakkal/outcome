import 'package:flutter/material.dart';

class EntryIn extends StatefulWidget {
  const EntryIn({Key? key}) : super(key: key);

  @override
  State<EntryIn> createState() => _EntryInState();
}

class _EntryInState extends State<EntryIn> {
  DateTime? _datetime;
  String dropdownvalue = 'Salary';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,
        title: Text("Add Your Income"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(_datetime == null
                ? 'No date selected'
                : _datetime.toString(),style: TextStyle(color: Colors.green),),
            ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.green),
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
            TextField(style: TextStyle(color: Colors.green),
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(style: TextStyle(color: Colors.green),
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 340,
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton<String>(iconEnabledColor: Colors.green,
                    isExpanded: true,
                    value: dropdownvalue,
                    icon: const Icon(Icons.arrow_downward),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                    items: <String>['Salary', 'Other']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,style: TextStyle(color: Colors.green),),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.green),onPressed: (){}, child: Text("Save"))
          ],
        ),
      ),
    );
  }
}
