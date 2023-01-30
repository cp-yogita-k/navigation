import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Center(child: Text("home page", style: TextStyle(fontSize: 50))),
      ),
    );
  }
}
