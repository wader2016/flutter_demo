import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('wader', style: TextStyle(fontWeight: FontWeight.bold)),
                accountEmail: Text('wader@163.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://img2.mukewang.com/5572c9660001cf1701000100-100-100.jpg'),
                ),
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  image: DecorationImage(
                    image: NetworkImage('https://img2.mukewang.com/5c98c090094329d806000338-240-135.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.lightBlueAccent.withOpacity(0.6),
                      BlendMode.hardLight
                    )
                  )
                ),
              ),
              // DrawerHeader(
              //   child: Text('Header'.toUpperCase()),
              //   decoration: BoxDecoration(
              //     color: Colors.grey[100]
              //   ),
              // ),
              ListTile(
                title: Text('message', textAlign: TextAlign.right),
                trailing: Icon(Icons.message, color: Colors.black12),
              ),
              ListTile(
                title: Text('favorite', textAlign: TextAlign.right),
                trailing: Icon(Icons.favorite, color: Colors.black12),
              ),
              ListTile(
                title: Text('settings', textAlign: TextAlign.right),
                trailing: Icon(Icons.settings, color: Colors.black12),
              )
            ],
          ),
        );
  }
  
}
