import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login Page',
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Email Address',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: 'Password'),
                  ),
                  Container(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () {}, child: Text("Login"))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {}, child: Text('Forgot password?'))
                    ],
                  ),
                ],
              )),
              TextButton(
                onPressed: () {},
                child: Text('Don\'t have account? Register now'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
