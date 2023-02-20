import 'dart:convert';

import 'package:api_example/imageModel.dart';
import 'package:api_example/user_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:http/http.dart' as http;

class API_example extends StatefulWidget {
  const API_example({super.key});

  @override
  State<API_example> createState() => _API_exampleState();
}

Future<List<ComentModel>> fetchdata() async {
  // final response =
  //     await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

  final response =
      await Dio().get("https://jsonplaceholder.typicode.com/photos");

  if (response.statusCode == 200) {
    List jsonResponce = response.data;
    return jsonResponce.map((data) => ComentModel.fromJson(data)).toList();
  } else {
    throw Exception("Failed to Load album");
  }
}

class _API_exampleState extends State<API_example> {
  late Future<List<ComentModel>> myfutureList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myfutureList = fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Api Example"),
      ),
      body: FutureBuilder<List<ComentModel>>(
        future: myfutureList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<ComentModel> mylist = snapshot.data!;

            return ListView.builder(
                itemCount: mylist.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      print("-->>>${mylist[index].id}");
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            padding: EdgeInsets.all(5),
                            height: 30,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 183, 211, 233)),
                            child: Text(
                                "(${mylist[index].id})Title:   ${mylist[index].title!}")),
                        Image.network("${mylist[index].url}"),
                        Image.network("${mylist[index].thumbnailUrl}")
                      ],
                    ),
                  );
                });
          } else if (snapshot.hasError) {}
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
