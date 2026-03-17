// ignore_for_file: file_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Exampletwo extends StatefulWidget {
  const Exampletwo({super.key});

  @override
  State<Exampletwo> createState() => _ExampletwoState();
}

class _ExampletwoState extends State<Exampletwo> {
  List<Photos> photosList = [];
  Future<List<Photos>> getPhotosApi() async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

    var data = jsonDecode(response.body.toString());
    if( response.statusCode == 200){
      for(Map<String, dynamic> i in data){
        Photos photos = Photos(title: i['title'], url: i['url']);
        photosList.add(photos);
      }

      return photosList;

    }
    else{
      return photosList;
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

        ],
      ),
    );
  }
}
class Photos{
  late String title, url;

  Photos({required this.title, required this.url});
}