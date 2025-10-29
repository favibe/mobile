import 'package:dart_practice/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const MaterialApp(
    home: Home(),
  ));
}

class SandBox extends StatelessWidget {
  const SandBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateless SandBox"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body:  Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            color: Colors.red,
            child: Text("This is one"),
          ),
          Container(
            width: 200,
            color: Colors.blueAccent,
            child: Text("This is two"),
          ),
          Container(
            width: 300,
            color: Colors.grey,
            child: Text("This is three"),
          ),
        ],
      )
    );
  }
}