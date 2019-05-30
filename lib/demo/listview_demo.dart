import 'package:flutter/material.dart';
import 'package:hello_world/model/post.dart';

class ListViewDemo extends StatelessWidget {

    Widget _itemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(lists[index].imageUrl),
          SizedBox(height: 16.0),
          Text(
            lists[index].title,
            style: Theme.of(context).textTheme.title,
          ),
           Text(
            lists[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    
    return  new ListView.builder(
          itemCount: lists.length,
          itemBuilder: _itemBuilder,
        );
  }
  
}