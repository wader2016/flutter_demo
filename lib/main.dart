
import 'package:flutter/material.dart';
import 'package:hello_world/demo/bottom_navigation_bar.dart';
import 'package:hello_world/demo/layout_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/listview_demo.dart';
import 'demo/view_demo.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Hello World',
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: null,
            )
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        // body: ListViewDemo(),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            LayoutDemo(),
            ViewDemo(),
            // Icon(Icons.local_florist,size: 128.0, color: Colors.black12),
            // Icon(Icons.change_history,size: 128.0, color: Colors.black12),
            // Icon(Icons.directions_bike,size: 128.0, color: Colors.black12),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo()
      ),
    );
  }
}
