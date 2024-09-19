import 'package:flutter/material.dart';
import 'package:stream/pages/cadastro.dart';
import 'package:stream/pages/login.dart';
import 'package:stream/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        '/' : (context) => const Login(),
        '/cadastro' : (context) => const Cadastro(),
        '/home' : (context) => const Home()
      }
    );
  }
}
