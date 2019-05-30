import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:hello_world/model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridViewDemo();
  }
}

class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      itemCount: lists.length,
      itemBuilder: (context, index) {
        return Container(
          child: Image.network(lists[index].imageUrl, fit: BoxFit.cover),
        );
      },
      padding: EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0
       )
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      itemCount: lists.length,
      itemBuilder: (context, index) {
        return Stack(
          children: <Widget>[
            SizedBox.expand(
              child: Image.network(
                lists[index].imageUrl,
                fit: BoxFit.cover,
                ),
            ),
            Positioned(
              bottom: 8.0,
              left: 8.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(lists[index].title, style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black, fontSize: 32.0)),
                  Text(lists[index].author, style: TextStyle(color: Colors.black38,fontSize: 24.0))
                ],
              ),
              // child: 
            ),
          ],
        );
      },
    );;
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      scrollDirection: Axis.vertical,
      // onPageChanged: (index) => '',
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          child: Text('ONE',
          style: TextStyle(
            fontSize: 32.0,
            color: Colors.white,
          ),
          ),
          alignment: Alignment.center,
        ),
        Container(
          color: Colors.grey[900],
          child: Text('TWO',
          style: TextStyle(
            fontSize: 32.0,
            color: Colors.white,
          ),
          ),
          alignment: Alignment.center,
        ),
        Container(
          color: Colors.blueGrey[900],
          child: Text('THREE',
          style: TextStyle(
            fontSize: 32.0,
            color: Colors.white,
          ),
          ),
          alignment: Alignment.center,
        )
      ],
    );;
  }
}