import 'package:flutter/material.dart';

void main() {
  runApp(MyStateFullApp());
}

class MyAppLessApp extends StatelessWidget {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ejm de StateLess Widget!"),
        ),
        body: Center(
          child: Text(counter.toString()),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.plus_one),
          onPressed: () {
            counter++;
            print(counter);
          },
        ),
      ),
    );
  }
}

class MyStateFullApp extends StatefulWidget {
  @override
  State<MyStateFullApp> createState() => _MyStateFullAppState();
}

class _MyStateFullAppState extends State<MyStateFullApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ejm de StateFull Widget!"),
        ),
        body: Center(
          child: Text(counter.toString(),
          style: TextStyle(fontSize: 70),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.plus_one),
          onPressed: () {
            setState(() {
              counter++;
              print(counter);
            });
          },
        ),
      ),
    );
  }
}

