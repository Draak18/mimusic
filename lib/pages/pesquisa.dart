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
  bool _isWidgetsecoes1Visible = false;
  bool _isWidgetsecoes2Visible = false;
  bool _isWidgetsecoes3Visible = false;

  void toggleSection(int section) {
    setState(() {
      _isWidgetsecoes1Visible = section == 1;
      _isWidgetsecoes2Visible = section == 2;
      _isWidgetsecoes3Visible = section == 3;
    });
  }

  Widget texto() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Pesquisar",
        style: GoogleFonts.inter(
          fontSize: 40,
          color: const Color.fromRGBO(243, 243, 243, 1),
          fontWeight: FontWeight.w900,
          height: 1,
        ),
      ),
    );
  }

  Widget barra() {
    return SizedBox(
      height: 50,
      width: 400,
      child: TextFormField(
        keyboardType: TextInputType.text,
        style: GoogleFonts.montserrat(
          color: const Color.fromRGBO(3, 0, 0, 1.0),
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Color.fromRGBO(0, 0, 0, 1.0),
          ),
          fillColor: const Color.fromRGBO(217, 217, 217, 1),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.0),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
        ),
      ),
    );
  }

  Widget albuns() {
    return Center(
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, // Espaçamento igual entre os botões
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(112, 24),
              backgroundColor: _isWidgetsecoes1Visible
                  ? Color.fromRGBO(189, 0, 243, 1)
                  : const Color.fromRGBO(44, 44, 44, 1.0),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            onPressed: () => toggleSection(1),
            child: Text("Playlists"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(112, 24),
              backgroundColor: _isWidgetsecoes2Visible
                  ? Color.fromRGBO(189, 0, 243, 1)
                  : const Color.fromRGBO(44, 44, 44, 1.0),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            onPressed: () => toggleSection(2),
            child: Text("Albúns"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(112, 24),
              backgroundColor: _isWidgetsecoes3Visible
                  ? Color.fromRGBO(189, 0, 243, 1)
                  : const Color.fromRGBO(44, 44, 44, 1.0),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            onPressed: () => toggleSection(3),
            child: Text("Músicas"),
          ),
        ],
      ),
    );
  }

  Widget secoes1() {
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
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'Sertanejo Universitário',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 24),
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Ação ao tocar na imagem
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 184,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'Funk do RJ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
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
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 184,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'Sofrência',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 24),
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Ação ao tocar na imagem
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 184,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'As melhores de 2024',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
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
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 184,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'Para pensar na vida',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 24),
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Ação ao tocar na imagem
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 184,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'Me sentindo diva',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
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
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 184,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'Brega funk',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 24),
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Ação ao tocar na imagem
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 184,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'Funks de SP',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
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
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'Hip Hop',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 24),
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Ação ao tocar na imagem
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 184,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'Músicas românticas ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
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
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'Internacionais',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 24),
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Ação ao tocar na imagem
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 184,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'Musícas para estudar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget secoes2() {
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
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'LUAN CITY',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 24),
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Ação ao tocar na imagem
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 184,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'Live-Móvel',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
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
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 184,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'LUAN AO VIVO NA LUA',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 24),
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Ação ao tocar na imagem
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 184,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'LUAN CITY 2.0',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
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
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 184,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'Patroas',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 24),
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Ação ao tocar na imagem
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 184,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'Todos os Cantos',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
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
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 184,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'Decretos Reais',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 24),
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Ação ao tocar na imagem
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 184,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'Vagabundo Romântico',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
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
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'Fruto Proibido',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 24),
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Ação ao tocar na imagem
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 184,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'Mágico dos flows',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
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
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'O próprio',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 24),
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Ação ao tocar na imagem
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 184,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'RUSH!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget secoes3() {
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
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'MTG',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 24),
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Ação ao tocar na imagem
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 184,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'Foi Bom',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
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
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 184,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'Herança',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 24),
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Ação ao tocar na imagem
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 184,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'Dança',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
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
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 184,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'Ela Vem',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 24),
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Ação ao tocar na imagem
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 184,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 33,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'I WANNA BE YOUR SLAVE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
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
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 184,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'Sagrado Profano',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 24),
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Ação ao tocar na imagem
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 184,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'Chuva de Arroz',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
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
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'Te Esperando',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 24),
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Ação ao tocar na imagem
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 184,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'A hora é agora',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
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
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'Escorpiana',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 24),
            Flexible(
              // Use Flexible em vez de definir uma largura fixa
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Ação ao tocar na imagem
                      Navigator.of(context).pushNamed("/cadastro");
                    },
                    child: Container(
                      height: 100,
                      width: 184,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(108, 10, 136, 1.0), // Rosa
                            Color.fromRGBO(189, 0, 243, 1.0), // Roxo
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color.fromRGBO(189, 0, 243, 1.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 37,
                            left: 10), // Ajuste o padding conforme necessário
                        child: Text(
                          'Incerteza',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(13, 198, 198, 198),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 37, left: 16.0, right: 16.0, bottom: 16.0),
          child: Column(children: [
            SizedBox(height: 24),
            texto(),
            SizedBox(height: 16),
            barra(),
            albuns(),
            _isWidgetsecoes1Visible ? secoes1() : SizedBox.shrink(),
            _isWidgetsecoes2Visible ? secoes2() : SizedBox.shrink(),
            _isWidgetsecoes3Visible ? secoes3() : SizedBox.shrink(),
          ]),
        ),
      ),
    );
  }
}
