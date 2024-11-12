import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mimusic/components/perfilImage.dart';

class Biblioteca extends StatefulWidget {
  const Biblioteca({super.key});

  @override
  State<Biblioteca> createState() => BibliotecaState();
}

class BibliotecaState extends State<Biblioteca> {
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
              backgroundColor: _isWidgetsecoes1Visible
                  ? const Color.fromRGBO(189, 0, 243, 1)
                  : const Color.fromRGBO(44, 44, 44, 1.0),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: const BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
            onPressed: () => toggleSection(1),
            child: const Text("Playlists"),
          ),
          const SizedBox(width: 24),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(112, 24),
              backgroundColor: _isWidgetsecoes2Visible
                  ? const Color.fromRGBO(189, 0, 243, 1)
                  : const Color.fromRGBO(44, 44, 44, 1.0),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: const BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
            onPressed: () => toggleSection(2),
            child: const Text("Álbuns"),
          ),
          const SizedBox(width: 24),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(112, 24),
              backgroundColor: _isWidgetsecoes3Visible
                  ? const Color.fromRGBO(189, 0, 243, 1)
                  : const Color.fromRGBO(44, 44, 44, 1.0),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: const BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
            onPressed: () => toggleSection(3),
            child: const Text("Músicas"),
          ),
          const SizedBox(width: 16), // Espaçamento à direita
        ],
      ),
    );
  }

  Widget mimusicTitulo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "MI",
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w800,
          ),
        ),
        Text(
          "MUSIC",
          style: GoogleFonts.montserrat(
            color: const Color.fromRGBO(189, 0, 243, 1),
            fontSize: 24,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: mimusicTitulo(),
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const PerfilImage(),
                      const SizedBox(width: 10),
                      Text(
                        "Seu Perfil",
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  barra(),
                  albuns(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                "Suas Faixas",
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/imagensmusica/livinho.png',
                      width: 115,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/imagensmusica/BackToBlack.png',
                      width: 115,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/imagensmusica/ConeCrew.png',
                      width: 115,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/imagensmusica/livinho.png',
                      width: 115,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/imagensmusica/BackToBlack.png',
                      width: 115,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/imagensmusica/ConeCrew.png',
                      width: 115,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/imagensmusica/livinho.png',
                      width: 115,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/imagensmusica/BackToBlack.png',
                      width: 115,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/imagensmusica/ConeCrew.png',
                      width: 115,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/imagensmusica/livinho.png',
                      width: 115,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/imagensmusica/BackToBlack.png',
                      width: 115,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/imagensmusica/ConeCrew.png',
                      width: 115,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                "Playlists",
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/imagensplaylist/playlist1.png',
                      width: 115,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/imagensplaylist/playlist2.png',
                      width: 115,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/imagensplaylist/playlist3.png',
                      width: 115,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/imagensplaylist/playlist1.png',
                      width: 115,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/imagensplaylist/playlist2.png',
                      width: 115,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/imagensplaylist/playlist3.png',
                      width: 115,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                "Podcast's",
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/imagenspodcast/PodPah.png',
                      width: 115,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/imagenspodcast/PodCats.png',
                      width: 115,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/imagenspodcast/PodDelas.png',
                      width: 115,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/imagenspodcast/PodPah.png',
                      width: 115,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/imagenspodcast/PodCats.png',
                      width: 115,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/imagenspodcast/PodDelas.png',
                      width: 115,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(17, 17, 17, 1),
    );
  }
}
