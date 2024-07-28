// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ImageSliderTest extends StatefulWidget {
  const ImageSliderTest({super.key});

  @override
  State<ImageSliderTest> createState() => _ImageSliderTestState();
}

class _ImageSliderTestState extends State<ImageSliderTest> {
  List<String> imageList = [
    "images/slider1.jpg",
    "images/slider2.webp",
    "images/slider3.webp"
  ];

  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // Schedule auto-scroll every 3 seconds
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Timer.periodic(const Duration(seconds: 3), (timer) {
        if (_pageController.hasClients) {
          int nextPage = (_currentPage + 1) % imageList.length;
          _pageController.animateToPage(
            nextPage,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
      });
    });
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.toInt();
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Slider"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 200,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: imageList.length,
                  itemBuilder: (context, index) {
                    return Image.asset(imageList[index]);
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              _buildDotIndicator()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDotIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(imageList.length, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          height: 8.0,
          width: 8.0,
          decoration: BoxDecoration(
            color: _currentPage == index ? Colors.blue : Colors.grey,
            shape: BoxShape.circle,
          ),
        );
      }),
    );
  }
}
