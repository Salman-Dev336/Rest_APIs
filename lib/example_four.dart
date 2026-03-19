import 'package:flutter/material.dart';
import 'package:meta/meta_meta.dart';
import 'package:http/http.dart' as http;
import 'package:rest_api/Models/user_model.dart';

class ExampleFour extends StatefulWidget {
  const ExampleFour({super.key});

  @override
  State<ExampleFour> createState() => _ExampleFourState();
}

class _ExampleFourState extends State<ExampleFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Integration'),
        centerTitle: true,

      ),
      body: Column(
        children: [
          Expanded(
            child:FutureBuilder(
              future: future, 
              builder: (context, AsyncSnapshot snapshot){
                return Text('example four');

              },
              ),
            ),
        ],
      ),
    );
  }
}