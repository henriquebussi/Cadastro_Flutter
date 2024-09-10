// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 36, 46),
      appBar: AppBar(
        title: const Text("Cadastro", style: TextStyle(color: Color.fromARGB(255, 180, 212, 0), fontSize: 50),),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        ),

      body: Container(
        padding: const EdgeInsets.all(18),
        margin: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 10, 12, 39),
          borderRadius: BorderRadius.circular(8),
        ),
        height: 500,
        width: 500,
        child: Form(
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Cadastro", style: TextStyle(color: Color.fromARGB(255, 180, 212, 0), fontSize: 30), textAlign: TextAlign.center),

              TextFormField(
                autofocus: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "Informe o Nome",
                  fillColor: Color.fromARGB(255, 180, 212, 0),
                  hintStyle: TextStyle(color: Colors.white),
                  iconColor:  Color.fromARGB(255, 180, 212, 0)
                ),
              ),
              TextFormField(
                autofocus: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.numbers_sharp),
                  hintText: "Informe o CPF",
                  hintStyle: TextStyle(color: Colors.white),
                  iconColor:  Color.fromARGB(255, 180, 212, 0)
                ),
              ),
              TextFormField(
                autofocus: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.phone_android),
                  hintText: "Informe o celular",
                  hintStyle: TextStyle(color: Colors.white),
                  iconColor:  Color.fromARGB(255, 180, 212, 0)
                ),
              ),
              TextFormField(
                autofocus: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.mail),
                  hintText: "Informe o e-mail",
                  hintStyle: TextStyle(color: Colors.white),
                  iconColor:  Color.fromARGB(255, 180, 212, 0)
                ),
              ),
              TextFormField(
                autofocus: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: "Informe o senha",
                  hintStyle: TextStyle(color: Colors.white),
                  iconColor:  Color.fromARGB(255, 180, 212, 0)
                ),
              ),
              TextFormField(
                autofocus: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: "confirme sua senha",
                  hintStyle: TextStyle(color: Colors.white),
                  iconColor: Color.fromARGB(255, 180, 212, 0),
              )),
              const SizedBox(height: 15),
              Center(
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cadastro()),
                  );
                }, 
                      child: Text("Entrar"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 180, 212, 0),
                  fixedSize: Size(200, 50),
                  foregroundColor: const Color.fromARGB(255, 167, 0, 0),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                ),
                ),
              ),
              
              const Divider(color: Colors.black,),
            ]
          ),
        ),
      ),
    );
}
}