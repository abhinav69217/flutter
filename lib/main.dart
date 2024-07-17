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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Hello World"),
              Text("Hello World"),
            ],
          ),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(20.0),
            child: Text("Inside Container"),
          ),
          Container(
            color: Colors.amber,
            padding: EdgeInsets.all(30.0),
            child: Text("Inside Container"),
          ),
          Container(
            color: Colors.pink,
            padding: EdgeInsets.all(40.0),
            child: Text("Inside Container"),
          )
        ],
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
