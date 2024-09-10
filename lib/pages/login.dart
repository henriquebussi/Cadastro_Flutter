import 'package:flutter/material.dart';
import 'cadastro.dart'; // Certifique-se de importar a nova página

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 36, 46),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  "Insira sua senha",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
              ),
              TextFormField(
                autofocus: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.mail),
                  hintText: "Informe o e-mail",
                  hintStyle: TextStyle(color: Colors.white),
                  iconColor: Color.fromARGB(255, 180, 212, 0),
                ),
              ),
              TextFormField(
                autofocus: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: "Informe a senha",
                  hintStyle: TextStyle(color: Colors.white),
                  iconColor: Color.fromARGB(255, 180, 212, 0),
                ),
              ),
              const SizedBox(height: 15),
              Center(
                child: ElevatedButton(
                  onPressed: () {
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
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const Divider(color: Colors.black),
            ],
          ),
        ),
      ),
    );
  }
}
