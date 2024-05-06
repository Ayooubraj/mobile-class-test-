import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simpleinterest/screen/grid_view_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Delay navigation to GridViewScreen by 2 seconds
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => GridViewScreen()),
      );
    });

    return const Scaffold(
      body: Center(child: Text("Welcome Ayooub!!")),
    );
  }
}
