import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30, left: 20),
        padding: EdgeInsets.only(top: 20, left: 20, right: 30, bottom: 100),
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: Colors.black,width: 7)
        ),
        child: Text("Body", style: TextStyle(fontSize: 33),),
      ),
    );
  }
}
