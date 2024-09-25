import 'package:flutter/material.dart';
import 'package:stream/shared/style.dart';
import 'dart:async';
import 'login.dart'; // Importando o arquivo login.dart

class SplashS extends StatefulWidget {
  const SplashS({super.key});

  @override
  State<SplashS> createState() => _SplashSState();
}

class _SplashSState extends State<SplashS> {
  @override
  void initState() {
    super.initState();
    // Timer para navegar para a tela de login após 3 segundos
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [MyColors.roxo, MyColors.preto],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/jacksons.png',
                width: 80, 
                height: 80,
              ),
              const SizedBox(height: 20), 
              const Text(
                'Jacksons',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
