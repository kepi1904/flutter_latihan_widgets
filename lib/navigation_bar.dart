// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class NavigationBarTest extends StatefulWidget {
  const NavigationBarTest({super.key});

  @override
  State<NavigationBarTest> createState() => _NavigationBarTestState();
}

class _NavigationBarTestState extends State<NavigationBarTest> {
  int selectIndex = 0;

  void onTaped(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  List<Widget> dataWidget = [
    const Text(
      "Home Page",
      style: TextStyle(fontSize: 30),
    ),
    const Text(
      "Profile Page",
      style: TextStyle(fontSize: 30),
    ),
    const Text(
      "Setting Page",
      style: TextStyle(fontSize: 30),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Bar Page"),
        actions: const [],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(child: dataWidget[selectIndex])],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Setting")
        ],
        currentIndex: selectIndex,
        onTap: onTaped,
      ),
    );
  }
}
