// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Exampletwo extends StatefulWidget {
  const Exampletwo({super.key});

  @override
  State<Exampletwo> createState() => _ExampletwoState();
}

class _ExampletwoState extends State<Exampletwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Integration'),
        centerTitle: true,
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}