import 'package:cats/model/cat.dart';
import 'package:cats/screens/cat_details_screen.dart';
import 'package:flutter/material.dart';

class CatCard extends StatelessWidget {
  final Cat cat;

  const CatCard({Key? key, required this.cat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CatDetailsScreen(cat: cat);
        }));
      },
      child: Card(
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                cat.imageLink,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  // Display placeholder or error message
                  return const Placeholder(child: Text('Error loading image'));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                cat.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
