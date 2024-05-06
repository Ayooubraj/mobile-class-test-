import 'package:flutter/material.dart';

class MyCircularButton extends StatefulWidget {
  final String text;
  const MyCircularButton({required this.text, super.key});

  @override
  _MyCircularButtonState createState() => _MyCircularButtonState();
}

class _MyCircularButtonState extends State<MyCircularButton> {
  Color _buttonColor = Colors.blue;
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _isVisible,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            if (_buttonColor == Color.fromARGB(255, 255, 231, 11)) {
              _buttonColor = Color.fromARGB(255, 4, 234, 255);
            } else {
              _isVisible = false;
            }
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: _buttonColor,
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(20),
        ),
        child: Text(
          widget.text,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}