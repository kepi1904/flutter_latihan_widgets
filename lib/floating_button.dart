// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class FloatingButtonTest extends StatefulWidget {
  const FloatingButtonTest({super.key});

  @override
  State<FloatingButtonTest> createState() => _FloatingButtonTestState();
}

class _FloatingButtonTestState extends State<FloatingButtonTest> {
  int counter = 0;

  void countUp() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Floating Button Test"),
        actions: const [],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              counter.toString(),
              style: const TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            countUp();
          }),
    );
  }
}
