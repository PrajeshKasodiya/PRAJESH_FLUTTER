import "package:flutter/material.dart";

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _containerHeight = double.infinity;
  Color _containerColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Ink(
          child: InkWell(
        child: Container(
          width: double.infinity,
          height: _containerHeight,
          color: _containerColor,
        ),
        onTap: () {
          setState(() {
            _containerHeight = 400;
            _containerColor = Colors.red;
          });
        },
      )),
    );
  }
}
