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
      body: Center(
        child: SizedBox(
          width: 200, // Specify a width for the button
          child: TextButton(
            onPressed: () {
              print("clicked");
            },
            child: Row(
              children: <Widget>[
                Icon(Icons.alternate_email), // The icon
                SizedBox(
                    width: 8), // Add some space between the icon and the text
                Text(
                  'Email', // The custom text
                  style: TextStyle(
                    fontFamily: 'IndieFlower',
                    fontSize: 24, // Change the font size
                    color: Colors.amber[600], // Change the font color
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text("Click"),
        onPressed: () => print("Clicked"),
        backgroundColor: Colors.green[500],
      ),
    );
  }
}
