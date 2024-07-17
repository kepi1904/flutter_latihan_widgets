// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  List data = [
    {"name": "Hafid", "job": "designer"},
    {"name": "Hafid", "job": "designer"},
    {"name": "Hafid", "job": "designer"},
    {"name": "Hafid", "job": "designer"},
    {"name": "Hafid", "job": "designer"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Page Two"),
          actions: const [],
        ),
        body: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(data[index]['name']),
                ),
              );
            }));
  }
}
