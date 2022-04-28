import 'dart:math' as math;

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  TextEditingController _emailTextFiedController = TextEditingController();
  TextEditingController _passwordTextFiedController = TextEditingController();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(children: <Widget>[
          TextField(
              controller: _emailTextFiedController,
              decoration: InputDecoration(labelText: "Email")),
          TextField(
              controller: _passwordTextFiedController,
              decoration: InputDecoration(labelText: "Password")),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () async {
                  debugPrint(_emailTextFiedController.text);
                  debugPrint(_passwordTextFiedController.text);
                },
                child: Text("Submit")),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  Color _generateColor() {
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
        .withOpacity(1.0);
  }
}
