import 'package:flutter/material.dart';
import 'package:mimusic/pages/cadastro.dart';
import 'package:mimusic/pages/home_page.dart';
import 'package:mimusic/pages/login.dart';
import 'package:mimusic/pages/telamusica.dart';
import 'package:mimusic/pages/usuario.dart';
import 'package:mimusic/pages/usuarios.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MiMusic',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/cadastro': (context) => const Cadastro(),
        '/login': (context) => const Login(),
        '/usuarios': (context) => const Usuarios(),
        '/usuario': (context) => const Usuario(),
        '/telamusica': (context) => const TelaMusica(),
      },
    );
  }
}
