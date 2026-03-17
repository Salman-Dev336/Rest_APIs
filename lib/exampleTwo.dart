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

  // API Function
  Future<List<Photos>> getPhotosApi() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/photos'),
    );

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);

      return data.map<Photos>((json) {
        return Photos(
          title: json['title'] ?? '',
          url: json['url'] ?? '',
        );
      }).toList();
    } else {
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Integration'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<Photos>>(
        future: getPhotosApi(),
        builder: (context, snapshot) {

          // Loading
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          // Error
          if (snapshot.hasError) {
            return const Center(child: Text('Something went wrong'));
          }

          // No Data
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No Data Found'));
          }

          // Data Available
          final photosList = snapshot.data!;

          return ListView.builder(
            itemCount: photosList.length,
            itemBuilder: (context, index) {

              return ListTile(
               leading: CircleAvatar(
                backgroundImage: NetworkImage(snapshot.data![index].url.toString()),
               ),
               title: Text(snapshot.data![index].title.toString()),
              );
            },
          );
        },
      ),
    );
  }
}

// Model Class
class Photos {
  String title;
  String url;

  Photos({
    required this.title,
    required this.url,
  });
}