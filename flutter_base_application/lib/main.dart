import 'package:flutter/material.dart';

import 'core.dart';

void main() => runApp(const MyApp());

@pragma('vm:entry-point')
Future<void> startApplication() async {
  setup();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Base Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Flutter Core Module 1',
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        print("Some thing");
      },),
    );
  }
}
