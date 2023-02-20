import 'dart:convert';

import 'package:api_example/product_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api_exmple extends StatefulWidget {
  const Api_exmple({super.key});

  @override
  State<Api_exmple> createState() => Api_exmpleState();
}

class Api_exmpleState extends State<Api_exmple> {
  Future<ProductModel> getprocuts() async {
    var response = await http.get(Uri.parse("https://dummyjson.com/products"));

    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      return ProductModel.fromJson(data);
    } else {
      return ProductModel.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: getprocuts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.products!.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    children: [
                      Image.network(
                          "${snapshot.data!.products![index].thumbnail}"),
                      Text(
                          "${snapshot.data!.products![index].title.toString()}"),
                      Text(
                          "${snapshot.data!.products![index].description.toString()}"),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 3,
                        width: MediaQuery.of(context).size.width / 1,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount:
                              snapshot.data!.products![index].images!.length,
                          itemBuilder: (context, positin) {
                            return Container(
                              padding: EdgeInsets.all(8),
                              margin: EdgeInsets.all(8),
                              child: Image.network(
                                "${snapshot.data!.products![index].images![positin].toString()}",
                                fit: BoxFit.fitWidth,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {}
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
