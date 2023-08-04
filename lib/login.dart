import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key, required String title});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        // ignore: sort_child_properties_last
        children: [
          Text("alpha "),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("beta "),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("gamma "),
          ),
          
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
     )
    );
  }
}
 //Text("alpha "),