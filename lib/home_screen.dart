import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.grey  ,
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Home screen",
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Icon(Icons.notification_add, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.language, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),
      body: const Center(
        child: Text(
          'homescreen',
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
