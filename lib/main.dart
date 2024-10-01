import 'package:flutter/material.dart';
import 'package:mimusic/pages/cadastro.dart';
import 'package:mimusic/pages/home.dart';
// import 'package:mimusic/pages/login.dart';
import 'package:mimusic/pages/usuarios.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.purple),
      initialRoute: "/",
      routes: {
        "/": (context) => const Usuarios(),
        "/cadastro": (context) => const Cadastro(),
        "/home": (context) => const Home(),
      },
    );
  }
}
