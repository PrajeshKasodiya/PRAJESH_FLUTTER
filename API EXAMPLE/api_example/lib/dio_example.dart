import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CustomDioInterceptor {
  final dio = Dio();

  Future<dynamic> getMethod() async {
    final response = await dio.get("https://reqres.in/api/users");
    return response.data;
  }

  Future<dynamic> addMethod(dynamic data) async {
    final response = await dio.post("https://reqres.in/api/users", data: data);
    return response.data;
  }
}

class DioTest extends StatefulWidget {
  const DioTest({Key? key}) : super(key: key);

  @override
  State<DioTest> createState() => _DioTestState();
}

class _DioTestState extends State<DioTest> {
  late Future future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = CustomDioInterceptor().getMethod();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GET TEST"),
      ),
      body: SafeArea(
        child: FutureBuilder(
          builder: (context, snapshot) {
            // Checking if future is resolved or not
            if (snapshot.connectionState == ConnectionState.done) {
              // If we got an error
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    '${snapshot.error} occurred',
                    style: TextStyle(fontSize: 18),
                  ),
                );

                // if we got our data
              } else if (snapshot.hasData) {
                // Extracting data from snapshot object
                final res = snapshot.data;
                List testData = res['data'];
                return Center(
                  child: ListView.builder(
                    itemCount: testData.length,
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ListTile(
                          leading: Image.network("${testData[i]['avatar']}"),
                          title: Text(
                              "${testData[i]['first_name']} ${testData[i]['last_name']}"),
                          subtitle: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text("${testData[i]['email']}"),
                          ),
                        ),
                      );
                    },
                  ),
                );
              }
            }

            // Displaying LoadingSpinner to indicate waiting state
            return const Center(
              child: CircularProgressIndicator(),
            );
          },

          // Future that needs to be resolved
          // inorder to display something on the Canvas
          future: future,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final res = await CustomDioInterceptor()
              .addMethod({"name": "prajesh", "job": "leader"});

          print("res => ${res}");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
