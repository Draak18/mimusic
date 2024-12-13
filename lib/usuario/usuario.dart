import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Usuario extends StatefulWidget {
  const Usuario({super.key});

  @override
  State<Usuario> createState() {
    return UsuarioState();
  }
}

class UsuarioState extends State<Usuario> {
  Widget seta() {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Image.asset(
        'assets/images/arrow.png',
        width: 50,
        height: 50,
      ),
    );
  }

  Widget mimusicTitulo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
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
        ),
      ],
    );
  }

  Widget informacoes() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 56,
            width: 56,
            child: Image.asset(
              "assets/images/perfilImage.png",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "MACACO",
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    "0 seguidores",
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    "0 seguindo",
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget botao1() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(74, 22),
          maximumSize: const Size(74, 22),
          backgroundColor: const Color.fromRGBO(17, 17, 17, 1),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
            side: const BorderSide(
              color: Colors.white,
              width: 2.0,
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          "Editar",
          style: GoogleFonts.montserrat(
            fontSize: 8,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget botao2() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed("/configuracao");
      },
      child: Image.asset(
        'assets/images/cardapio.png',
        height: 16,
      ),
    );
  }

  Widget recentes() {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, // Alinha os filhos à esquerda
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            "Suas atividades recentes",
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed("/");
                        },
                        child: Image.asset(
                          'assets/imagensmusica/livinho.png',
                          width: 105,
                          height: 105,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("/");
                            },
                            child: const Text(
                              'Irmã Gostosa',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("/");
                            },
                            child: const Text(
                              'Música de Livinho',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed("/");
                        },
                        child: Image.asset(
                          'assets/imagensmusica/BackToBlack.png',
                          width: 105,
                          height: 105,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("/");
                            },
                            child: const Text(
                              'Back To Black',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("/");
                            },
                            child: const Text(
                              'Música de Amy  Winehouse',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed("/");
                        },
                        child: Image.asset(
                          'assets/imagensmusica/ConeCrew.png',
                          width: 105,
                          height: 105,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("/");
                            },
                            child: const Text(
                              'Com os Neurônios \nEvoluindo',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("/");
                            },
                            child: const Text(
                              'Álbum de Cone Crew Diretoria',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed("/");
                        },
                        child: Image.asset(
                          'assets/imagensartista/AnaCastelo.png',
                          width: 105,
                          height: 105,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("/");
                            },
                            child: const Text(
                              'Herança',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("/");
                            },
                            child: const Text(
                              'Música de Ana Castelo',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed("/");
                        },
                        child: Image.asset(
                          'assets/imagensartista/ananda.png',
                          width: 105,
                          height: 105,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("/");
                            },
                            child: const Text(
                              'Fiz 18',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("/");
                            },
                            child: const Text(
                              'Música de Ananda',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(17, 17, 17, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 8,
            left: 10.0,
            right: 16.0,
            bottom: 16.0,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  seta(),
                  Container(width: MediaQuery.of(context).size.width * .2),
                  mimusicTitulo(),
                ],
              ),
              informacoes(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      botao1(),
                      const SizedBox(width: 4),
                      botao2(),
                    ],
                  ),
                  const SizedBox(height: 20),
                  recentes(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
