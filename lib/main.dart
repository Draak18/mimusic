import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

// Páginas importadas
import 'package:mimusic/login/cadastro.dart';
import 'package:mimusic/usuario/configuracao.dart';
import 'package:mimusic/pages/home_page.dart';
import 'package:mimusic/login/login.dart';
import 'package:mimusic/pages/splash.dart';
import 'package:mimusic/pages/resultado.dart';
import 'package:mimusic/pages/telamusica.dart';
import 'package:mimusic/usuario/usuario.dart';
import 'package:mimusic/login/usuarios.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      initialRoute: '/splashscreen',
      routes: {
        '/': (context) => const HomePage(),
        '/cadastro': (context) => const Cadastro(),
        '/login': (context) => const Login(),
        '/usuarios': (context) => const Usuarios(),
        '/usuario': (context) => const Usuario(),
        '/splashscreen': (context) => const SplashScreen(),
        '/configuracao': (context) => const Configuracao(),
        '/resultado': (context) => const Resultado(),
        
      },
      onGenerateRoute: (settings) {
        // Gerenciamento dinâmico da tela TelaMusica
        if (settings.name == '/telamusica') {
          final args = settings.arguments as Map<String, dynamic>?;
          if (args != null &&
              args.containsKey('musica') &&
              args.containsKey('colecao')) {
            return MaterialPageRoute(
              builder: (context) => TelaMusica(
                musica: args['musica'],
                colecao: args['colecao'], // Adiciona a coleção
              ),
            );
          }
        }
        // Retorna null caso a rota não seja encontrada
        return null;
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
