// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:rest_api/exampleTwo.dart';
import 'package:rest_api/example_five.dart';
import 'package:rest_api/example_four.dart';
import 'package:rest_api/example_three.dart';
import 'package:rest_api/last_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: LastExample(),
    );
  }
}



  