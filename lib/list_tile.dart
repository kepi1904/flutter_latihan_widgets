// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ListileTest extends StatefulWidget {
  const ListileTest({super.key});

  @override
  State<ListileTest> createState() => _ListileTestState();
}

class _ListileTestState extends State<ListileTest> {
  final List<String> dummyData = List.generate(10, (index) => ('item $index'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("List Tile Test"),
          actions: const [],
        ),
        body: ListView.builder(
            itemCount: dummyData.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 2,
                color: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                child: ListTile(
                  title: Text(
                    dummyData[index],
                    style: const TextStyle(color: Colors.white),
                  ),
                  subtitle: const Text(
                    "This is subtitile from listtile",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
              );
            }));
  }
}
