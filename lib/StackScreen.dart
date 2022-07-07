import 'dart:html';

import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack page Example")),
      body: Column(
        children: [
          Image(
            image: NetworkImage(
                'https://th.bing.com/th/id/R.1a616d03469304f3ee855e44e1037918?rik=pFgQjXyVUHRqoA&riu=http%3a%2f%2fupload.wikimedia.org%2fwikipedia%2fcommons%2f3%2f38%2fFlower_July_2011-2_1_cropped.jpg&ehk=I18Ym0u7Qb7y5%2bz5oa87N%2bbaWjnVGYuMrN6djhH6O9I%3d&risl=&pid=ImgRaw&r=0'),
            height: 200.0,
            width: 200.0,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
