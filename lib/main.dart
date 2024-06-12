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
  TextEditingController controllerName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Latihan Widget"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          const Text(
            "My Apps",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: TextField(
              controller: controllerName,
              decoration: const InputDecoration(
                  labelText: "Input Nama", border: OutlineInputBorder()),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(controllerName.text.toString())));
              },
              child: const Text("Push Button"))
        ],
      )),
    );
  }
}
