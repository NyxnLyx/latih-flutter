import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(GridApp());
}

class GridApp extends StatelessWidget {
  GridApp({super.key});

  final List<Container> myGrid = List.generate(90, (index) {
    return Container(
      color: Color.fromARGB(255, 
      Random().nextInt(255), 
      Random().nextInt(255), 
      Random().nextInt(255)),
      );
    }
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Grid App'),
        ),
        body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 3 / 4,
          ),
          children: myGrid,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
