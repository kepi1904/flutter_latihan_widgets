// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class GridviewTest extends StatefulWidget {
  const GridviewTest({super.key});

  @override
  State<GridviewTest> createState() => _GridviewTestState();
}

class _GridviewTestState extends State<GridviewTest> {
  final List<String> dummyData = List.generate(10, (index) => 'item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Gridview Test"),
          actions: const [],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
              itemCount: dummyData.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Text(
                      dummyData[index],
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              }),
        ));
  }
}
