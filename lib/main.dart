import 'package:firstapp/StackScreen.dart';
import 'package:firstapp/homeScreen.dart';
import 'package:firstapp/loginScreen.dart';
import 'package:firstapp/messenger_screen.dart';
import 'package:firstapp/rowScreen.dart';
import 'package:firstapp/user_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black),
      home: UserScreen(),
    );
  }
}

class NavigationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Column(
        children: [
          OutlinedButton(
              onPressed: () => _navigateTo(context, HomeScreen()),
              child: Text('Colum Example')),
          OutlinedButton(
              onPressed: () => _navigateTo(context, RowScreen()),
              child: Text('Row Example')),
          OutlinedButton(
              onPressed: () => _navigateTo(context, LoginScreen()),
              child: Text('Login page')),
          OutlinedButton(
            onPressed: () => _navigateTo(context, StackScreen()),
            child: Text("Stack Page"),
          ),
          OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => MessengerScreen()));
              },
              child: Text('Messenger Page'))
        ],
      ),
    ));
  }

  void _navigateTo(BuildContext context, Widget newScreen) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => newScreen));
  }
}
