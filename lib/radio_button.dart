// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class RadioButtonTest extends StatefulWidget {
  const RadioButtonTest({super.key});

  @override
  State<RadioButtonTest> createState() => _RadioButtonTestState();
}

class _RadioButtonTestState extends State<RadioButtonTest> {
  int selectValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio Button Test"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              RadioListTile(
                  title: const Text("Option 1"),
                  value: 1,
                  groupValue: selectValue,
                  onChanged: (int? value) {
                    setState(() {
                      selectValue = value!;
                    });
                  }),
              RadioListTile(
                  title: const Text("Option 2"),
                  value: 2,
                  groupValue: selectValue,
                  onChanged: (int? value) {
                    setState(() {
                      selectValue = value!;
                    });
                  }),
              RadioListTile(
                  title: const Text("Option 3"),
                  value: 3,
                  groupValue: selectValue,
                  onChanged: (int? value) {
                    setState(() {
                      selectValue = value!;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
