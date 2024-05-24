import 'package:flutter/material.dart';
import 'Home.dart';

class LoginData{
  var user;
  var pass;
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  LoginState createState(){
  return LoginState();
 }
}

class LoginState extends State<Login> {

  final _formKey = GlobalKey<FormState>();
  LoginData loginData = LoginData();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 26.0),
            child: Image(image: AssetImage('lib/assest/img1.png'),
            width: 100.0,
            height: 100.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              onChanged: (value) => loginData.user = value,
              keyboardType: TextInputType.emailAddress,
              validator: (value){
                if (value == null || value.isEmpty ){
                  return "campo email obrigatorio";
                }
                return null;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
                labelText: 'usuario',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              obscureText: true,
              onChanged: (value) => loginData.pass = value,
              validator: (value){
                if (value == null || value.isEmpty ){
                  return "campo senha obrigatorio";
                }
                return null;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
                labelText: 'senha',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: OutlinedButton(
              child: const Text("Entrar"),
              onPressed:() => {
                if (_formKey.currentState!.validate()){
                  if(loginData.user == "wendhelmoraes45@gmail.com" &&
                  loginData.pass == "12345"){
                    Navigator.push( context,MaterialPageRoute(builder: (context) => Home()))
                }
                else{
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Usuario e/ou senha invalido")
                    ),
                  )
                }
              } 
            } 
            ),
            )
          ],
        ),
      );
  }
}