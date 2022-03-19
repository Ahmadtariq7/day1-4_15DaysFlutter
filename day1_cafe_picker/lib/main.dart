import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _nameState();
}

class _nameState extends State<MyApp> {
  List<String> cafes = [
    'Food Garage',
    'McDonald\'s',
    'Bun n Roll',
    'Melting Spot',
    'Wah Khan Cafe & Bakers',
    'Pizza Hut',
    'Pizza box'
  ];

  int _currentIndex = 0;
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("What you will eat today?"),
              Text(
                cafes[_currentIndex],
                style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),
              ElevatedButton(
                onPressed: updateIndex,
                child: Text('Pick Cafe'),
              ),
              TextField(
                controller: _controller,
                textAlign: TextAlign.center,
                decoration: InputDecoration(hintText: "Your Name"),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void updateIndex() {
    final random = Random();
    final index = random.nextInt(cafes.length);
    setState(() {
      _currentIndex = index;
    });
  }
}
