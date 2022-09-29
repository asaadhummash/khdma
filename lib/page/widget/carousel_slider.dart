import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliders extends StatefulWidget {
  const CarouselSliders({required key}) : super(key: key);

  @override
  State<CarouselSliders> createState() => _CarouselSlidersState();
}

class _CarouselSlidersState extends State<CarouselSliders> {
  int _current = 0;

  final List<String> images = [
    "assets/images/jobs.jpg",
    "assets/images/jobs.jpg",
    "assets/images/jobs.jpg",
  ];

  List<Widget> generateImagesTiles() {
    return images
        .map((element) => ClipRRect(
      child: Image.asset(
        element,
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.circular(15.0),
    ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: generateImagesTiles(),
      options: CarouselOptions(
        enlargeCenterPage: true,
      ),
    );
  }
}
