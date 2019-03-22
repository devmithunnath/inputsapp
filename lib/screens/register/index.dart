import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Register();
  }
}

class _Register extends State<Register> {

  String title;
  String description;
  double price;

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.all(10.0),
          child: ListView(children: <Widget>[

          TextField(
            decoration: InputDecoration(labelText: 'App Title'),
            onChanged: (String value) {
              setState(() { title = value; });
            },),

          TextField(
            decoration: InputDecoration(labelText: 'App Description'),
            maxLines: 4,
            onChanged: (String value) {
              setState(() { description = value; });
            },),

          TextField(
            decoration: InputDecoration(labelText: 'App Rating'),
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              setState(() { price = double.parse(value); });
            },),

            RaisedButton(
              child: Text('Save'),
              onPressed: (){ print(title); },
            ),

        ],
        )
    );
  }
}