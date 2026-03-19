import 'dart:convert';

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

  Future<void>  getUserApi() async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200){
      for(Map<String, dynamic> i in data){
        userList.add (UserModel.fromJson( i));  
      }
    }
  }

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