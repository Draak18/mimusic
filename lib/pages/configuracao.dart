import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Configuracao extends StatefulWidget {
  const Configuracao({super.key});

  @override
  State<Configuracao> createState() => _ConfiguracaoState();
}

class _ConfiguracaoState extends State<Configuracao> {
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
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'Nome de Usuario',
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
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
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'Canvas - Idiomas do App',
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
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
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'Reprodução sem Pausas',
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
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
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'Tocados Recentemente e Seguidores',
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
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
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'Push - Email',
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
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
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'Google Maps - Controle',
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
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
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'Push - Email',
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
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
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'Qualidade do streaming por wifi',
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
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
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'Versao - Politica de Privacidade',
                  style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
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
        mainAxisAlignment: MainAxisAlignment.center, // Alinhamento centralizado da linha
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(112, 24),
              backgroundColor: Color(0xFF791BE3),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: const BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed("/");// Exemplo de ação
            },
            child: Text('Sair',
              style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 16.0,
                    ),
             ), // Texto do botão
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(37, 30, 17, 1),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          iconSize: 30,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Configurações',
              style: GoogleFonts.montserrat(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            // Adicione o segundo widget aqui, se necessário
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 37, left: 16.0, right: 16.0, bottom: 16.0),
          child: Column(
            children: [
              SizedBox(
                height: 8,
              ),
              Informacao(),
              botao(),
            ],
          ),
        ),
      ),
    );
  }
}
