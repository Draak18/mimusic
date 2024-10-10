import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pesquisa extends StatefulWidget {
  const Pesquisa({super.key});

  @override
  State<Pesquisa> createState() {
    return PesquisaState();
  }
}

class PesquisaState extends State<Pesquisa> {
  Widget texto() {
    return Text(
      "Pesquisa",
      style: GoogleFonts.inter(
        fontSize: 40,
        color: Colors.white,
        fontWeight: FontWeight.w900,
        height: 1,
      ),
    );
  }

  Widget barra() {
    return Container(
      color: const Color.fromRGBO(255, 243, 243, 1),
      height: 32,
      width: 100,
    );
  }

  Widget secoes() {
    return Column(
      children: [
        const SizedBox(height: 16),
        Row(
          mainAxisSize: MainAxisSize.min, // Adicione essa linha
          children: [
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Ação ao tocar na imagem
                      print("Imagem gato1 tocada!");
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
                  SizedBox(height: 8),
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
            SizedBox(width: 48),
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Ação ao tocar na imagem
                      print("Imagem gato2 tocada!");
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
                  SizedBox(height: 8),
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
        SizedBox(height: 32),
        Row(
          mainAxisSize: MainAxisSize.min, // Adicione essa linha
          children: [
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Ação ao tocar na imagem
                      print("Imagem gato3 tocada!");
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
                  SizedBox(height: 8),
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
            SizedBox(width: 48),
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Ação ao tocar na imagem
                      print("Imagem gato4 tocada!");
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
                  SizedBox(height: 8),
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
        SizedBox(height: 32),
        Row(
          mainAxisSize: MainAxisSize.min, // Adicione essa linha
          children: [
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Ação ao tocar na imagem
                      print("Imagem gato5 tocada!");
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
                  SizedBox(height: 8),
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
            SizedBox(width: 48),
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Ação ao tocar na imagem
                      print("Imagem gato6 tocada!");
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
                  SizedBox(height: 8),
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
        SizedBox(height: 32),
        Row(
          mainAxisSize: MainAxisSize.min, // Adicione essa linha
          children: [
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Ação ao tocar na imagem
                      print("Imagem gato7 tocada!");
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
                  SizedBox(height: 8),
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
            SizedBox(width: 48),
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Ação ao tocar na imagem
                      print("Imagem gato8 tocada!");
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
                  SizedBox(height: 8),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(13, 198, 198, 198),
      body: Padding(
        padding: const EdgeInsets.only(
            top: 16.0, left: 16.0, right: 16.0, bottom: 16.0),
        child: Column(children: [
          texto(),
          barra(),
        ]),
      ),
    );
  }
}
