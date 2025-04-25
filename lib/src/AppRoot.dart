import 'package:flutter/material.dart';
import 'package:task_4/Screens/Screen1.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Screen1(),
    );
  }
}