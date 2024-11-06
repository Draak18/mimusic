import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaMusica extends StatefulWidget {
  const TelaMusica({super.key});

  @override
  State<TelaMusica> createState() => TelaMusicaState();
}

class TelaMusicaState extends State<TelaMusica> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, 
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          iconSize: 30,
          onPressed: () {
            Navigator.pop(context); 
          },
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.black,
          ),
          SingleChildScrollView( 
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment(0.0, 0.9),
                    colors: [
                      Color(0xFF560A6C),
                      Colors.black,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      'Rainha da Pista',
                      style: GoogleFonts.poppins(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Cone Crew Diretoria',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.white70,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 15),
                    Image.asset(
                      "assets/imagensmusica/ConeCrew.png",
                      height: 275,
                      width: 275,
                    ),
                    const SizedBox(height: 5),
                    Slider(
                      value: 0.70,
                      onChanged: (value) {},
                      activeColor: Colors.white,
                      inactiveColor: Colors.white30,
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.skip_previous),
                          color: Colors.white,
                          iconSize: 30,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.play_arrow),
                          color: Colors.white,
                          iconSize: 42,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.skip_next),
                          color: Colors.white,
                          iconSize: 30,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF3E2941),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Mas eu sei, rainha da pista que conquista quem passa',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(125, 255, 255, 255),
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Quente como o sol, faz sinal de fumaça',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(235, 255, 255, 255),
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'E quando vai embora tudo fica sem graça (sem graça)',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(125, 255, 255, 255),
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Mas a saia dela diz onde ela quer chegar',
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(125, 255, 255, 255),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 5), 
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
