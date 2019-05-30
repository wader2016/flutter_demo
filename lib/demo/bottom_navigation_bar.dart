
import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BottomBavigationBarState();
  }

}

class BottomBavigationBarState extends State<BottomNavigationBarDemo> {
  
  int _currentIndex = 0;

  void _onTabHandler(int index) { 
    setState(() {
      _currentIndex = index;
    });
    
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTabHandler,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text('发现'),
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text('历史'),
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text('列表'),
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('我的'),
            )
          ],
        );
  }
  
}