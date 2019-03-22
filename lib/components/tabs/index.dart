import 'package:flutter/material.dart';
import './../../screens/home/index.dart';
import './../../screens/register/index.dart';
import './../../screens/events/index.dart';

class Tab extends StatelessWidget {
  @override

  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('Choose'),
              ),
              ListTile(
                title: Text('All Products'),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Home()));
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Manage Products'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.create),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.list),
                text: 'Register',
              ),
              Tab(
                icon: Icon(Icons.list),
                text: 'Events',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[Home(), Register(), Events()],
        ),
      ),
    );
  }
}