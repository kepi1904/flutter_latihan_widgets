// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CircleImageTest extends StatefulWidget {
  const CircleImageTest({super.key});

  @override
  State<CircleImageTest> createState() => _CircleImageTestState();
}

class _CircleImageTestState extends State<CircleImageTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Circle Image"),
          actions: const [],
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(80)),
            child: const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("images/person.jpg"),
            ),
          ),
        ));
  }
}
