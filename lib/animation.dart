// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationTest extends StatefulWidget {
  const AnimationTest({super.key});

  @override
  State<AnimationTest> createState() => _AnimationTestState();
}

class _AnimationTestState extends State<AnimationTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Test"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [Lottie.asset('images/animation.json')],
          ),
        ),
      ),
    );
  }
}
