import 'package:flutter/material.dart';

List<String> images = [
  "image (1).jpg",
  "image (1).png",
  "image (2).jpg",
  "image (3).jpg",
  "image (4).jpg",
  "image (5).jpg",
  "event1.png",
  "image (1).jpg",
  "image (1).png",
  "image (2).jpg",
  "image (3).jpg",
  "image (4).jpg",
  "image (5).jpg",
  "event1.png",
  "image (1).jpg",
  "image (1).png",
  "image (2).jpg",
  "image (3).jpg",
  "image (4).jpg",
  "image (5).jpg",
  "event1.png",
];

List<String> name = [
  "Car No 1",
  "Car No 2",
  "Car No 3",
  "Car No 4",
  "Car No 5",
  "Car No 6",
  "Car No 1",
  "Car No 2",
  "Car No 3",
  "Car No 4",
  "Car No 5",
  "Car No 6",
  "Car No 1",
  "Car No 2",
  "Car No 3",
];

List<Color> colorS = [
  Colors.red,
  Colors.yellow,
  Colors.green,
  Colors.brown,
  Colors.grey,
  Colors.amber,
  Colors.red,
  Colors.yellow,
  Colors.green,
  Colors.brown,
  Colors.grey,
  Colors.amber,
  Colors.red,
  Colors.yellow,
  Colors.green,
  Colors.brown,
  Colors.grey,
  Colors.amber,
];

class customModel {
  String name;
  String image;
  Color color;
  customModel({required this.name, required this.image, required this.color});
}

List<customModel> all_data = [
  customModel(name: name[0], image: images[0], color: colorS[0]),
  customModel(name: name[1], image: images[1], color: colorS[1]),
  customModel(name: name[2], image: images[2], color: colorS[2]),
  customModel(name: name[3], image: images[3], color: colorS[3]),
  customModel(name: name[4], image: images[4], color: colorS[4]),
  customModel(name: name[5], image: images[5], color: colorS[5]),
];
