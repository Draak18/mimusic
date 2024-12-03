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

  Widget mimusicTitulo() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "MI",
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(
            text: "MUSIC",
            style: GoogleFonts.montserrat(
              color: const Color.fromRGBO(189, 0, 243, 1),
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }

  Widget perfis() {
    return Column(
      children: [
        const SizedBox(height: 16),
        mimusicTitulo(),
        const SizedBox(height: 30),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/");
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(
                        "assets/images/gato1.jpg",
                        fit: BoxFit.cover,
                        height: 120,
                        width: 120,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text("USUÁRIOS",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 1,
                      )),
                ],
              ),
            ),
            const SizedBox(width: 48),
            Flexible(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/");
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(
                        "assets/images/gato2.jpg",
                        fit: BoxFit.cover,
                        height: 120,
                        width: 120,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text("USUÁRIOS",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 1,
                      )),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 32),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/");
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(
                        "assets/images/gato3.jpg",
                        fit: BoxFit.cover,
                        height: 120,
                        width: 120,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text("USUÁRIOS",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 1,
                      )),
                ],
              ),
            ),
            const SizedBox(width: 48),
            Flexible(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/");
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(
                        "assets/images/gato4.jpg",
                        fit: BoxFit.cover,
                        height: 120,
                        width: 120,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text("USUÁRIOS",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 1,
                      )),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 32),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/");
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(
                        "assets/images/gato5.jpg",
                        fit: BoxFit.cover,
                        height: 120,
                        width: 120,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text("USUÁRIOS",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 1,
                      )),
                ],
              ),
            ),
            const SizedBox(width: 48),
            Flexible(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/");
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(
                        "assets/images/gato6.jpg",
                        fit: BoxFit.cover,
                        height: 120,
                        width: 120,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text("USUÁRIOS",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 1,
                      )),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 32),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/");
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(
                        "assets/images/gato7.jpg",
                        fit: BoxFit.cover,
                        height: 120,
                        width: 120,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text("USUÁRIOS",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 1,
                      )),
                ],
              ),
            ),
            const SizedBox(width: 48),
            Flexible(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/");
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(
                        "assets/images/gato8.jpg",
                        fit: BoxFit.cover,
                        height: 120,
                        width: 120,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text("USUÁRIOS",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 1,
                      )),
                ],
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
        child: SingleChildScrollView(
          child: Column(
            children: [perfis()],
          ),
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
