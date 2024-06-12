import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LatihanWidget(),
  ));
}

class LatihanWidget extends StatefulWidget {
  const LatihanWidget({super.key});

  @override
  State<LatihanWidget> createState() => _LatihanWidgetState();
}

class _LatihanWidgetState extends State<LatihanWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Latihan Widget"),
        centerTitle: true,
      ),
      body: const Center(
          child: Column(
        children: [
          Text("Ini body latihan1"),
          Text("Ini body latihan2"),
          Text("Ini body latihan3"),
          Text("Ini body latihan4"),
        ],
      )),
    );
  }
}
