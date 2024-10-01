import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Usuarios extends StatefulWidget {
  const Usuarios({super.key});

  @override
  State<Usuarios> createState() {
    return UsuariosState();
  }
}

class UsuariosState extends State<Usuarios> {
  Widget fundo() {
    return Opacity(
      opacity: 0.2,
      child: Image.asset(
        'assets/images/wallpaper.png',
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }

  Widget perfis() {
    return Column(
      children: [
        Text(
          "USUÁRIOS",
          style: GoogleFonts.montserrat(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w600,
            height: 1,
          ),
        ),
        const SizedBox(height: 90),
        Row(
          mainAxisSize: MainAxisSize.min, // Adicione essa linha
          children: [
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Image.asset(
                "assets/images/gato1.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Image.asset(
                "assets/images/gato2.webp",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min, // Adicione essa linha
          children: [
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Image.asset(
                "assets/images/gato3.webp",
                fit: BoxFit.cover,
              ),
            ),
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Image.asset(
                "assets/images/gato1.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget caixaCinza() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(17, 17, 17, 1),
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          border: Border.all(
              width: 2.0, color: const Color.fromARGB(13, 198, 198, 198)),
        ),
        child: Column(
          children: [perfis()],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(children: [
          fundo(),
          caixaCinza(),
        ]));
  }
}
