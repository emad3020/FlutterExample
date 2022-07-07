import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('First App'),
          actions: [
            IconButton(
              icon: Icon(Icons.notification_important),
              onPressed: () {},
            ),
            IconButton(onPressed: () {}, icon: Text('Hello'))
          ]),
      body: Container(
          color: Colors.purple,
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                color: Colors.red,
                child: Text(
                  'First Text',
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                ),
              ),
              Container(
                color: Colors.green,
                child: Text(
                  'Second Text',
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                ),
              ),
              Container(
                color: Colors.blue,
                child: Text(
                  'Third Text',
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                ),
              ),
              Container(
                color: Colors.amber,
                child: Text(
                  'Fourth Text',
                  style: TextStyle(color: Colors.white, fontSize: 30.0),
                ),
              ),
            ],
          )),
    );
  }
}
