import 'package:flutter/material.dart';
import 'package:stream/pages/cadastro.dart';
import 'package:stream/pages/login.dart';
import 'package:stream/pages/home.dart';
import 'package:stream/shared/style.dart';
import 'package:stream/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        fontFamily: Myfonts.fontPrimary,
        colorScheme: ColorScheme.fromSeed(seedColor: MyColors.azulEscuro),
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: {
        "/" : (context) => const SplashS(),
        '/login' : (context) => const Login(),
        '/cadastro' : (context) => const Cadastro(),
        '/home' : (context) => const Home()
      }
    );
  }
}
