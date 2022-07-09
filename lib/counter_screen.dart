import 'package:flutter/material.dart';

// Statefull widget class contain 2 classes
// 1- one to provide widget
// 2- other to provide state for this widget

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

// statefull lifeCycle order
// 1- constractor
// 2- initState
// 3- build

class _CounterScreenState extends State<CounterScreen> {
  int counter = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    if (counter > 0) counter--;
                    print(counter);
                  });
                },
                child: Text('MINUS'),
              ),
            ),
            Text(
              '$counter',
              style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    counter++;
                    print(counter);
                  });
                },
                child: Text('PLUS'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
