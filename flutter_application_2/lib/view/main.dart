import 'package:flutter/material.dart';
import 'Login.dart';
void main()=>runApp(const App()); 

class App extends StatelessWidget {
  const App ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Login(),
      ),
    );
  }
}