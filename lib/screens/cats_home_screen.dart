import 'package:cats/widgets/cat_card.dart';
import 'package:flutter/material.dart';
import "package:cats/main.dart";

class CatsHomeScreen extends StatelessWidget {
  const CatsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("World Of Cats"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.cyan, // Cyan app bar
      ),
      body: LayoutBuilder( // Adapt layout based on screen size
        builder: (context, constraints) {
          return GridView.builder(
            // Adjust grid layout for different screen sizes
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: constraints.maxWidth / 2, // Half of screen width
              childAspectRatio: 3 / 2, // Adjust aspect ratio as needed
            ),
            itemCount: cats.length,
            itemBuilder: (context, index) {
              final cat = cats[index];
              return CatCard(cat: cat);
            },
          );
        },
      ),
    );
  }
}
