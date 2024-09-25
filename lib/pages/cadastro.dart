// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:stream/pages/login.dart';


class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final _formKey = GlobalKey<FormState>();
  bool _showPassword = false;
  bool _showPassword1 = false;



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 36, 46),
      appBar: AppBar(
        title: const Text("Cadastro", style: TextStyle(color: Color.fromARGB(255, 180, 212, 0), fontSize: 50),),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        ),

      body: Center(
        child: Container(
          padding: const EdgeInsets.all(18),
          margin: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 10, 12, 39),
            borderRadius: BorderRadius.circular(8),
          ),
          height: 500,
          width: 500,
          child: Form(
            child: SingleChildScrollView(
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
                    validator: (String? name){
                      if(name == "" || name == null){
                        return "O nome não pode ser vazio";
                      }
                      return null; }
                  ),
                  TextFormField(
                    autofocus: true,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.numbers_sharp),
                      hintText: "Informe o CPF",
                      hintStyle: TextStyle(color: Colors.white),
                      iconColor:  Color.fromARGB(255, 180, 212, 0)
                    ),
                    validator: (String? cpf){
                      if(cpf == "" || cpf == null){
                        return "O cpf não pode ser vazio";
                      } 
                      if (cpf.length < 11){
                        return "cpf esta muito curto burro";
                      }
                      return null;
                    }
                  ),
                  TextFormField(
                    autofocus: true,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.phone_android),
                      hintText: "Informe o celular",
                      hintStyle: TextStyle(color: Colors.white),
                      iconColor:  Color.fromARGB(255, 180, 212, 0)
                    ),
                    validator: (String? phone){
                      if(phone == "" || phone == null){
                        return "O telefone não pode ser vazio";
                      } 
                      if (phone.length < 13){
                        return "telefone esta muito curto burro";
                      }
                      return null;
                    }
                  ),
                  TextFormField(
                    autofocus: true,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.mail),
                      hintText: "Informe o e-mail",
                      hintStyle: TextStyle(color: Colors.white),
                      iconColor:  Color.fromARGB(255, 180, 212, 0)
                    ),
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
                    }
                  ),
                  TextFormField(
                    autofocus: true,
                    obscureText: _showPassword1 == false ? true : false,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.lock),
                      suffixIcon: GestureDetector(child: Icon(
                        _showPassword1 == false ? Icons.visibility_off : Icons.visibility,
                      ),
                      
                      onTap: () {
                        setState(() {
                          _showPassword1 = !_showPassword1;
                        });
                      }
                      ),
                      hintText: "Informe o senha",
                      hintStyle: const TextStyle(color: Colors.white),
                      iconColor:  const Color.fromARGB(255, 180, 212, 0)
                    ),
                    validator: (String? senha){
                      if(senha == "" || senha == null){
                        return "O senha não pode ser vazio";
                      } 
                      if (senha.length < 8){
                        return "senha esta muito curto burro";
                      }
                      return null;
                    }
                  ),
                  TextFormField(
                    autofocus: true,
                    obscureText: _showPassword == false ? true : false,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.lock),
                      suffixIcon: GestureDetector(child: Icon(
                        _showPassword == false ? Icons.visibility_off : Icons.visibility,
                      ),
                      
                      onTap: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      }
                      ),
                      hintText: "confirme sua senha",
                      hintStyle: TextStyle(color: Colors.white),
                      iconColor: Color.fromARGB(255, 180, 212, 0),
                      
                  ),
                  validator: (String? senha) {
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

                  GestureDetector(
                    child: const Text(
                      "Login",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12 ),
                    ),
                    onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                      )

                    },
                  ),
                  Center(
                    child: ElevatedButton(

                      onPressed: (){
                        buttonEnterClick();

                    }, 
                    // ignore: sort_child_properties_last
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
        ),
      ),
    );
}

buttonEnterClick(){
    if(_formKey.currentState!.validate()){
      print("ok");
      }
      else{
        print ("form erro");
      }
  }
}