// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  List dataList = [
    {
      "name": "Rudi",
      "job": "flutter",
    },
    {
      "name": "Budi",
      "job": "flutter",
    },
    {
      "name": "Hafid",
      "job": "flutter",
    },
    {
      "name": "Rangga",
      "job": "flutter",
    },
    {
      "name": "Desta",
      "job": "flutter",
    },
    {
      "name": "Desta",
      "job": "flutter",
    },
    {
      "name": "Naruto",
      "job": "flutter",
    },
    {
      "name": "Sasuke",
      "job": "flutter",
    },
    {
      "name": "Doraemon",
      "job": "flutter",
    },
    {
      "name": "Rudi",
      "job": "flutter",
    },
    {
      "name": "Budi",
      "job": "flutter",
    },
    {
      "name": "Hafid",
      "job": "flutter",
    },
    {
      "name": "Rangga",
      "job": "flutter",
    },
    {
      "name": "Desta",
      "job": "flutter",
    },
    {
      "name": "Desta",
      "job": "flutter",
    },
    {
      "name": "Naruto",
      "job": "flutter",
    },
    {
      "name": "Sasuke",
      "job": "flutter",
    },
    {
      "name": "Doraemon",
      "job": "flutter",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Page Two"),
          actions: const [],
        ),
        body: ListView.builder(
            itemCount: dataList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: SizedBox(
                  height: 60,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(dataList[index]['name']),
                          Text(dataList[index]['job'])
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
