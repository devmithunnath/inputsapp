import 'package:flutter/material.dart';

class Error extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text('Wrong Password'),
        content: Text('Please provide the correct Password'),
        actions: <Widget>[
          FlatButton(child: Text('Retry'), onPressed: (){
            Navigator.pop(context);
          },),
        ],
      );
    });
  }
}