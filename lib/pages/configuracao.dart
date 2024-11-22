import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Configuracao extends StatefulWidget {
  const Configuracao({super.key});

  @override
  State<Configuracao> createState() => _ConfiguracaoState();
}

class _ConfiguracaoState extends State<Configuracao> {
  Widget Informacao() {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              'assets/imagesConfig/Conta.png',
              width: 40,
              height: 40,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Conta',
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Nome de Usuario',
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Image.asset(
              'assets/imagesConfig/Conteudo.png',
              width: 40,
              height: 40,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Conteudo e Tela',
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Canvas - Idiomas do App',
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Image.asset(
              'assets/imagesConfig/Economia.png',
              width: 40,
              height: 40,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Reprodução',
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Reprodução sem Pausas',
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Image.asset(
              'assets/imagesConfig/Privacidade.png',
              width: 40,
              height: 40,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Privacidade e Redes Sociais',
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Tocados Recentemente e Seguidores',
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Image.asset(
              'assets/imagesConfig/Notificações.png',
              width: 40,
              height: 40,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Notificações',
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Push - Email',
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Image.asset(
              'assets/imagesConfig/Apps.png',
              width: 40,
              height: 40,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Notificações',
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Google Maps - Controle',
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Image.asset(
              'assets/imagesConfig/Economia.png',
              width: 40,
              height: 40,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Economia de dados - Modo Offline',
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Push - Email',
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Image.asset(
              'assets/imagesConfig/Qualidade.png',
              width: 40,
              height: 40,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Qualidade',
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Qualidade do streaming por wifi',
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Image.asset(
              'assets/imagesConfig/Sobre.png',
              width: 40,
              height: 40,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sobre',
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Versao - Politica de Privacidade',
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }

  Widget botao() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(112, 24),
              backgroundColor: Color(0xFF791BE3),
              foregroundColor: const Color.fromRGBO(217, 217, 217, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: const BorderSide(
                  color: Color.fromARGB(255, 26, 26, 26),
                  width: 1.0,
                ),
              ),
            ),
            onPressed: () async {
              try {
                await FirebaseAuth.instance.signOut();

                Navigator.of(context).pushNamed("/login");
              } catch (e) {
                print("Erro ao deslogar: $e");
              }
            },
            child: Text(
              'Sair',
              style: GoogleFonts.montserrat(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget seta() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed("/");
      },
      child: Image.asset(
        'assets/images/arrow.png',
        width: 50,
        height: 50,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(17, 17, 17, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(35, 35, 35, 1),
        leading: seta(),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Configurações',
              style: GoogleFonts.montserrat(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 24, left: 16.0, right: 16.0, bottom: 16.0),
          child: Column(
            children: [
              Informacao(),
              SizedBox(
                height: 16,
              ),
              botao(),
            ],
          ),
        ),
      ),
    );
  }
}
