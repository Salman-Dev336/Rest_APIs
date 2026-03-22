// import 'package:meta/meta_meta.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:rest_api/Models/user_model.dart';

class ExampleFive extends StatefulWidget {
  const ExampleFive({super.key});

  @override
  State<ExampleFive> createState() => _ExampleFiveState();
}

class _ExampleFiveState extends State<ExampleFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Integration'),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}