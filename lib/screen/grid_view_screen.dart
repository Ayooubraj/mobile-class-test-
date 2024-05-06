import 'package:flutter/material.dart';
import 'package:simpleinterest/widgets/my_circular_button.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GridView Screen')),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: const <Widget>[
          MyCircularButton(text: 'A'),
          MyCircularButton(text: 'Y'),
          MyCircularButton(text: 'O'),
          MyCircularButton(text: 'O'),
          MyCircularButton(text: 'U'),
          MyCircularButton(text: 'B'),
        ],
      ),
    );
  }
}
