import 'package:flutter/material.dart';

class New1page extends StatefulWidget {
  // The count is now managed by the State, so it's not needed here
  const New1page({super.key});

  @override
  State<New1page> createState() => _New1pageState();
}

class _New1pageState extends State<New1page> {
  // Move the mutable state (count) into the State class
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page One'),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.plus_one),
            onPressed: () {
              // Action for settings button
              setState(() {
                _count++; // Increment the state variable
              });
            },
          ),
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              // Action for info button
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Welcome to the StatefulWidget! Count: $_count', // Use the state variable
          style: const TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
    );
  }
}