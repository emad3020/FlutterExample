import 'package:firstapp/model/usermodel.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(id: 1, name: 'Emad Ahmed', phone: '+2011243324343434'),
    UserModel(id: 2, name: 'Ali Mohamed', phone: '+20114342232323'),
    UserModel(id: 3, name: 'Khaled Ali', phone: '+20112324423'),
    UserModel(id: 4, name: 'Islam Ahmed', phone: '+201023423232323'),
    UserModel(id: 5, name: 'Ibrahim Mahmoud', phone: '+2012423323343434'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Users')),
      body: ListView.separated(
        itemBuilder: (context, index) => buildUserItem(users[index]),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(start: 20.0),
          child: Container(
            color: Colors.grey[300],
            width: double.infinity,
            height: 1.0,
          ),
        ),
        itemCount: users.length,
        scrollDirection: Axis.vertical,
      ),
    );
  }

  Widget buildUserItem(UserModel userItem) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              child: Text(
                userItem.id.toString(),
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(width: 20.0),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userItem.name,
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    userItem.phone,
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
          ],
        ),
      );
}
