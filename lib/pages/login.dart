// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import '../shared/style.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool _showPassword = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 36, 46),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          padding: const EdgeInsets.all(18),
          margin: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [MyColors.roxo, MyColors.azulEscuro]),
            color: const Color.fromARGB(255, 37, 37, 37),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Center(
                    child: Text( 
                      "Login",
                      style: TextStyle(fontSize: 35, color: Colors.white),
                      
                    ),
                  ),
                  Center(
                    child: Image.asset('assets/download.webp', width: 150,),
                  ),
              
              
                  TextFormField(
                    autofocus: true,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.mail),
                      hintText: "Informe o e-mail",
                      hintStyle: TextStyle(color: Colors.white),
                      iconColor: Color.fromARGB(255, 180, 212, 0),
                    ),
                    style: const TextStyle(color: Colors.white),
                    validator: (String? email){
                      if(email == "" || email == null){
                        return "O email não pode ser vazio";
                      } 
                      if (email.length < 6){
                        return "Email esta muito curto burro";
                      }
                      if (!email.contains("@")){
                        return "Email Invalido corno";
                      }
                      return null;

                    },
                  ),
                  TextFormField(
                    autofocus: true,
                    obscureText: _showPassword == false ? true : false,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.lock),
                      suffixIcon: GestureDetector(child: Icon(
                        _showPassword == false ? Icons.visibility_off : Icons.visibility
                      ),
                      
                      onTap: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      }
                      ),
                      hintText: "Informe a senha",
                      hintStyle: const TextStyle(color: Colors.white),
                      iconColor: const Color.fromARGB(255, 180, 212, 0),             
                    ),
                    style: const TextStyle(color: Colors.white),
                    validator: (String? senha){
                      if(senha == "" || senha == null){
                        return "O senha não pode ser vazio";
                      } 
                      if (senha.length < 8){
                        return "senha esta muito curto burro";
                      }
                      return null;

                    },
                  ),
                  const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () {
                        buttonEnterClick();
                      },
                      // ignore: sort_child_properties_last
                      child: const Text("Entrar"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 180, 212, 0),
                        fixedSize: const Size(200, 50),
                        foregroundColor: const Color.fromARGB(255, 167, 0, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  const Divider(color: Colors.black),
                  GestureDetector(
                    child: const Text(
                      "Cadastrar-se",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    onTap: () => {
                        Navigator.pushReplacementNamed(context, '/cadastro'),

                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void buttonEnterClick() {
    if (_formKey.currentState!.validate()) {
      print("ok");
      // Navigate to the /home route on successful validation
      Navigator.pushNamed(context, '/home');
    } else {
      print("form erro");
    }
  }
}