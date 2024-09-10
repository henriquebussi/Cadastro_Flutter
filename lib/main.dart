import 'package:flutter/material.dart';
import 'package:stream/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: 
      ColorScheme.fromSeed(seedColor:
       Color.fromARGB(0, 0, 0, 0)),
        useMaterial3: true),
      title: 'Flutter Demo',
      home: Login(),
    );
  }
}
