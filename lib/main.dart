import 'package:flutter/material.dart';
import './screens/home/index.dart';
import './screens/register/index.dart';
import './screens/auth/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Auth(),
    );
  }
}
