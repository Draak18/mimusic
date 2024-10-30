import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(112, 24),
              backgroundColor: _isWidgetsecoes1Visible
                  ? const Color.fromRGBO(189, 0, 243, 1)
                  : const Color.fromRGBO(44, 44, 44, 1.0),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            onPressed: () => toggleSection(1),
            child: const Text("Playlists"),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(112, 24),
            backgroundColor: _isWidgetsecoes2Visible
                ? const Color.fromRGBO(189, 0, 243, 1)
                : const Color.fromRGBO(44, 44, 44, 1.0),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          onPressed: () => toggleSection(2),
          child: const Text("Álbuns"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(112, 24),
              backgroundColor: _isWidgetsecoes3Visible
                  ? const Color.fromRGBO(189, 0, 243, 1)
                  : const Color.fromRGBO(44, 44, 44, 1.0),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            onPressed: () => toggleSection(3),
            child: const Text("Músicas"),
          ),
        ),
      ],
    );
  }

  Widget mimusicFoto() {
    return Image.asset(
      "assets/images/perfilImage.png",
      height: 40, // Ajuste a altura conforme necessário
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
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            mimusicFoto(),
            Expanded(
              child: Center(
                child: mimusicTitulo(), 
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  barra(),
                  albuns(),
                ],
              ),
            ),
            const SizedBox(height: 10),
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
            const SizedBox(height: 10),
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
            const SizedBox(height: 10),
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
                      'assets/imagenspodcast/PodDelas.png',
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
                      'assets/imagenspodcast/PodPah.png',
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
                      'assets/imagenspodcast/PodCats.png',
                      width: 115,
                      height: 115,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
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
            const SizedBox(height: 10),
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
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                "Baixados",
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 10),
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
          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(17, 17, 17, 1),
    );
  }
}
