import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Resultado extends StatefulWidget {
  const Resultado({super.key});

  @override
  State<Resultado> createState() {
    return ResultadoState();
  }
}

class ResultadoState extends State<Resultado> {
  Widget barra() {
    return SizedBox(
      height: 50,
      width: double.infinity,
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
            borderSide: const BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.0),
            borderSide: const BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.0),
            borderSide: const BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
        ),
      ),
    );
  }

  Widget albuns() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(112, 24),
              backgroundColor: const Color.fromRGBO(189, 0, 243, 1),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: const BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
            onPressed: () {},
            child: const Text("Playlists"),
          ),
          const SizedBox(width: 24),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(112, 24),
              backgroundColor: const Color.fromRGBO(189, 0, 243, 1),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: const BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
            onPressed: () {},
            child: const Text("Álbuns"),
          ),
          const SizedBox(width: 24),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(112, 24),
              backgroundColor: const Color.fromRGBO(189, 0, 243, 1),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: const BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
            onPressed: () {},
            child: const Text("Músicas"),
          ),
          const SizedBox(width: 16), // Espaçamento à direita
        ],
      ),
    );
  }

  Widget musicas() {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 600,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Color(0xFF791BE3)
                .withOpacity(0.4), // Cor #791BE3 com 40% de visibilidade
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/imagesresultado/bob.png',
                    width: 88, // Define a largura da imagem
                    height: 88,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Adicione a vírgula aqui
                    children: [
                      // Corrigido para incluir a vírgula
                      Text(
                        'Playlist de Pagode',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 1),
                      Text(
                        'Feito por Pixote',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Image.asset(
                    'assets/imagesresultado/pixote.png',
                    width: 88,
                    height: 88,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Playlist de Pagode',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 1),
                      Text(
                        'Feito por Pixote',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/imagesresultado/bob.png',
                    width: 88, // Define a largura da imagem
                    height: 88,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Adicione a vírgula aqui
                    children: [
                      // Corrigido para incluir a vírgula
                      Text(
                        'Playlist de Pagode',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 1),
                      Text(
                        'Feito por Pixote',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Image.asset(
                    'assets/imagesresultado/pixote.png',
                    width: 88, // Define a largura da imagem
                    height: 88,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Adicione a vírgula aqui
                    children: [
                      // Corrigido para incluir a vírgula
                      Text(
                        'Playlist de Pagode',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 1),
                      Text(
                        'Feito por Pixote',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Image.asset(
                    'assets/imagesresultado/bob.png',
                    width: 88, // Define a largura da imagem
                    height: 88,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Adicione a vírgula aqui
                    children: [
                      // Corrigido para incluir a vírgula
                      Text(
                        'Playlist de Pagode',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 1),
                      Text(
                        'Feito por Pixote',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget play() {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 200,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Color(0xFF791BE3)
                .withOpacity(0.4), // Cor #791BE3 com 40% de visibilidade
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 1.0, top: 30.0),
                    child: Image.asset(
                      'assets/imagesresultado/bob.png',
                      width: 120,
                      height: 120,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 40.0),
                    child: Row(
                      // Adicionei um Row aqui para agrupar a imagem e o texto
                      children: [
                        Image.asset(
                          'assets/imagesresultado/icon.png',
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(width: 8), // Espaço entre a imagem e o texto
                        Text(
                          'Cone Crew Diretoria',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ), // Fecha o Container
      ), // Fecha o SingleChildScrollView
    ); // Fecha o Center
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(17, 17, 17, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 37, left: 16.0, right: 16.0, bottom: 16.0),
          child: Column(children: [
            const SizedBox(height: 24),
            barra(),
            albuns(),
            SizedBox(
              height: 16,
            ),
            musicas(),
            SizedBox(
              height: 16,
            ),
            play(),
          ]),
        ),
      ),
    );
  }
}
