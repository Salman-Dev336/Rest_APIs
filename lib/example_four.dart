// ignore_for_file: prefer_typing_uninitialized_variables, unused_local_variable

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
    var data;
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

   
    if (response.statusCode == 200){
       data = jsonDecode(response.body.toString());
      // for(Map<String, dynamic> i in data){
      //   userList.add (UserModel.fromJson( i));  
      // }
    }
    else{}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('API Integration',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20, 
          ),
         

        ),
         centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child:FutureBuilder(
              future: getUserApi(), 
              builder: (context,  snapshot){
               if (snapshot.connectionState == ConnectionState.waiting){
                return Center(child: CircularProgressIndicator(),
                );
               }

               else{
                return Text('Data Loaded');
                
               }
              
              },
              ),
            ),
        ],
      ),
    );
  }
}