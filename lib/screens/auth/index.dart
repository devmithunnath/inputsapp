import 'package:flutter/material.dart';
import './../home/index.dart';

class Auth extends StatefulWidget {

  final String appPassword = 'Test123';

  @override
  State<StatefulWidget> createState() {
    return _Auth();
  }
}

class _Auth extends State<Auth> {

  String username;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('AUTHENTICATION')),
      ),
      body: Container(
          margin: EdgeInsets.all(10.0),
          child: ListView(children: <Widget>[

            TextField(
              decoration: InputDecoration(labelText: 'Username'),
              onChanged: (String value) {
                setState(() { username = value; });
              },),

            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
              onChanged: (String value) {
                setState(() { password = value; });
              },),

            RaisedButton(
              child: Text('Login'),
              onPressed: (){
                checkAuth(username, password , widget.appPassword);
              },
            ),

          ],
          )
      ),
    );
  }

  // Auth Function
  checkAuth(username, password , appPassword) {
    if(appPassword == password && username != '') {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Home()),);
    } else {
      print('Wrong Password');
      showDialog(context: context, builder: (BuildContext context){
        return AlertDialog(
          title: Text('Wrong Credentials'),
          content: Text('Please provide the correct username and password'),
          actions: <Widget>[
            FlatButton(child: Text('Retry'), onPressed: (){
              Navigator.pop(context);
            },),
          ],
        );
      });
    }
  }
}