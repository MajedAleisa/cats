import 'package:cats/data/all_cats.dart';
import 'package:cats/model/cat.dart';
import 'package:cats/screens/cats_home_screen.dart';
import 'package:flutter/material.dart';


final cats = allcats.map<Cat>((jsonCat) => Cat.fromJson(jsonCat)).toList();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CatsHomeScreen(),
    );
  }
}

void main() {
  runApp(const MyApp());
}
