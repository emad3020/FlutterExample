import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        backgroundColor: Colors.tealAccent,
        title: Text(
          'Row Example',
          style: TextStyle(fontSize: 30.0, color: Colors.white),
        ),
      ),
      body: Container(
        color: Colors.purpleAccent,
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
                color: Colors.red,
                child: Text(
                  'First',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                )),
                Container(
                color: Colors.green,
                child: Text(
                  'Second',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                )),
                Container(
                color: Colors.blue,
                child: Text(
                  'Third',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                )),

                Container(
                color: Colors.amber,
                child: Text(
                  'Fourth',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
