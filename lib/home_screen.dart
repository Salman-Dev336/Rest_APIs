// ignore_for_file: unused_import, depend_on_referenced_packages

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:meta/meta_meta.dart';
import 'package:http/http.dart' as http;
import 'package:rest_api/Models/post_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

List<PostModel> postList = [];

Future<List<PostModel>> getPostApi() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

  var data = jsonDecode(response.body.toString());

  if (response.statusCode == 200) {
    for (Map<String, dynamic> i in data) {
      postList.add(PostModel.fromJson(i));
    }
    return postList;
  } else {
    return postList;
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Integration'),
      ),
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}