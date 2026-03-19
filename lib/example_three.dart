import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rest_api/Models/user_model.dart';

class ExampleThree extends StatefulWidget {
  const ExampleThree({super.key});

  @override
  State<ExampleThree> createState() => _ExampleThreeState();
}

class _ExampleThreeState extends State<ExampleThree> {
  List<UserModel> userList = [];
  Future<List<UserModel>> getUserApi() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200){
      for(Map<String, dynamic> i in data){
        userList.add( UserModel.fromJson(i));
      }
      // userList = UserModel().fromList(data);
      return userList;
    }
    else{
      return userList;
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('API Course'), centerTitle: true),
      body: Column(children: [
        Expanded(
          child: FutureBuilder(
            future: getUserApi(),
            builder: (context, AsyncSnapshot<List<UserModel>> snapshot) {
              if (!snapshot.hasData) {
                return Text('Loading');
              } else {
                return ListView.builder(
                    itemCount: userList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Name: '),
                                  Text(userList[index].name.toString()),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Email: '),
                                  Text(userList[index].email.toString()),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Address: '),
                                  Text(userList[index].address!.street.toString()),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              }
              
            },
          )
          ),

        ],
      ),
    );
  }
}
