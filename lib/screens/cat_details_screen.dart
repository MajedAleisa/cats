import 'package:cats/model/cat.dart';
import 'package:flutter/material.dart';

class CatDetailsScreen extends StatelessWidget {
  final Cat cat;

  const CatDetailsScreen({Key? key, required this.cat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cat.name),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        // Set the background color to cyan using Colors.cyan
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView( // Add scroll view for longer content
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(
              cat.imageLink,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16.0),
            Text(
              'Origin: ${cat.origin}',
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Max Weight: ${cat.maxWeight.toString()} kg',
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Min Weight: ${cat.minWeight.toString()} kg',
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Length: ${cat.length.toString()} cm',
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
