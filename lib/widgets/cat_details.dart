import 'package:flutter/material.dart';
import 'package:cats/model/cat.dart';

class CatDetailsWidget extends StatefulWidget {
  final Cat cat;
  const CatDetailsWidget({Key? key, required this.cat}) : super(key: key);

  @override
  State<CatDetailsWidget> createState() => _CatDetailsWidgetState();
}

class _CatDetailsWidgetState extends State<CatDetailsWidget> {
  double _fontSize(Size screenSize) {
    if (screenSize.width < 500) {
      return 20.0;
    } else {
      return 24.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.cat.name),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 500) {
              // Smaller screen: use Wrap for text details
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: constraints.maxWidth,
                      child: Image.network(widget.cat.imageLink),
                    ),
                    Text(
                      widget.cat.name,
                      style: TextStyle(
                        fontSize: _fontSize(screenSize),
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8.0),
                    Text('Origin: ${widget.cat.origin}', textAlign: TextAlign.center),
                    const SizedBox(height: 4.0),
                    Text('Max Weight: ${widget.cat.maxWeight}', textAlign: TextAlign.center),
                    const SizedBox(height: 4.0),
                    Text('Min Weight: ${widget.cat.minWeight}', textAlign: TextAlign.center),
                    const SizedBox(height: 4.0),
                    Text('Length: ${widget.cat.length}', textAlign: TextAlign.center),
                  ],
                ),
              );
            } else {
              // Larger screen: use Row for text details
              return SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: constraints.maxWidth,
                      child: Image.network(widget.cat.imageLink),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.cat.name,
                          style: TextStyle(
                            fontSize: _fontSize(screenSize),
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 8.0),
                        Text('Origin: ${widget.cat.origin}', textAlign: TextAlign.center),
                        const SizedBox(height: 4.0),
                        Text('Max Weight: ${widget.cat.maxWeight}', textAlign: TextAlign.center),
                        const SizedBox(height: 4.0),
                        Text('Min Weight: ${widget.cat.minWeight}', textAlign: TextAlign.center),
                        const SizedBox(height: 4.0),
                        Text('Length: ${widget.cat.length}', textAlign: TextAlign.center),
                      ],
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}