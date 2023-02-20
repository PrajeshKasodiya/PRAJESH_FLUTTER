import "package:flutter/material.dart";

class _MyHomePageState extends State<MyHomePage> {
double? _fontSize = 14;

void _increseFontSize( ) {
 setState(() {
   _fontSize = fontSize + 2;
 });
void _decreseFontSize( ) {
 setState(() {
   _fontSize = fontSize - 1;
 });
}

@override
Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    title: Text(widget.title),
  ),
  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'FontSize is now: $_fontSize',
          style: TextStyle(fontSize: _fontSize),
        ),
        ElevatedButton(onPressed: () => _increseFontSize(), child: const Text("+")),
        ElevatedButton(onPressed: () => _decreseFontSize(), child: const Text("-")),
        
      ],
    ),
  ),
);}}