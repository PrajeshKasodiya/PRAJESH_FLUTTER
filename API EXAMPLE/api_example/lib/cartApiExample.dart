import 'dart:convert';

import 'package:api_example/user_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CustomApiIntergration {
  Dio dio = Dio();
  Future<dynamic> getData() async {
    final response = await dio.get("https://dummyjson.com/carts");
    return response.data;
  }
}

class cartApiExample extends StatefulWidget {
  const cartApiExample({super.key});

  @override
  State<cartApiExample> createState() => _cartApiExampleState();
}

class _cartApiExampleState extends State<cartApiExample> {
  late Future future;
  @override
  void initState() {
    // TODO: implement initState

    future = CustomApiIntergration().getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart api calling"),
      ),
      body: SafeArea(
        child: FutureBuilder(
          future: future,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Center(
                  child: Text("${snapshot.error} occured",
                      style: TextStyle(fontSize: 18)),
                );
              } else if (snapshot.hasData) {
                var res = snapshot.data;
                List testData = res["carts"];
                return ListView.builder(
                  itemCount: testData.length,
                  itemBuilder: (context, index) {
                    List products = testData[index]['products'];
                    return Column(
                      children: [
                        ListTile(
                          tileColor: Colors.green.shade200,
                          title: Text("${testData[index]['id']}"),
                        ),
                        SizedBox(
                          height: 250,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: products.length,
                            itemBuilder: (context, j) {
                              var pro = products[j]['title'];
                              return ListTile(
                                leading: Text("${testData[index]['id']}"),
                                title: Text("${pro}"),
                              );
                            },
                          ),
                        )
                      ],
                    );
                  },
                );
              }
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
