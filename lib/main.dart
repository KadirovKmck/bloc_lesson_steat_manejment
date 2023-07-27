import 'package:bloc_lesson_steat_manejment/BlocPage.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(BlocApp());
}
class BlocApp extends StatelessWidget {
  const BlocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocPage(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}