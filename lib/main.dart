import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MY FIRST APP"),
        backgroundColor: Colors.green[700],
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(60),
        color: Colors.grey[400],
        child: Text("Hello"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Hello");
        },
        child: Text("Click Me"),
        backgroundColor: Colors.green[700],
      ),
    );
  }
}
