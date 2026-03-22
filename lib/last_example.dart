// ignore_for_file: avoid_unnecessary_containers

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:rest_api/Models/products_model.dart';
import 'dart:convert';
import 'package:rest_api/Models/user_model.dart';

class LastExample extends StatefulWidget {
  const LastExample({super.key});

  @override
  State<LastExample> createState() => _LastExampleState();
}

class _LastExampleState extends State<LastExample> {
Future<ProductsModel> getProductsAPI() async {
  final response = await http.get(Uri.parse('https://webhook.site/8e8858b7-c47f-4b68-817f-fce4acfcb4c5'));
  var data = jsonDecode(response.body.toString());
  if (response.statusCode==200){

    return ProductsModel.fromJson(data);
  }
  return ProductsModel.fromJson(data);

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Integrtion of Products API'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,

      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<ProductsModel>(
              future: getProductsAPI(),
              builder: (context, snapshot){
                if(!snapshot.hasData){
                  return Text('Loading');
                }
                return ListView.builder(
                  itemCount: snapshot.data!.data!.length,
                  itemBuilder: (context, index){
                    return Column(
                      children: [
                       Container(
                        height: MediaQuery.of(context).size.height*.3,
                        width: MediaQuery.of(context).size.height*.1,
                        child: ListView.builder(
                          itemCount: snapshot.data!.data![index].images!.length,
                          itemBuilder: (context , position){
                            return Container(
                                   height: MediaQuery.of(context).size.height*.25,
                        width: MediaQuery.of(context).size.height*.5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(''))
                        ) ,
                            );
                          }),
                       ),
                      ],

                    );
                   
                  });
                  
              }
              )),
        ],
      ),
    );
  }
}