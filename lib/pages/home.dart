import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mimusic/components/perfilImage.dart';
import 'package:mimusic/pages/telamusica.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  final CollectionReference _podcasts =
      FirebaseFirestore.instance.collection('podcast');
  final CollectionReference _populares =
      FirebaseFirestore.instance.collection('populares');
  final CollectionReference _mundiais =
      FirebaseFirestore.instance.collection('mundiais');

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

  Widget buildItemList(
      CollectionReference collection, String title, String colecao) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 4),
          FutureBuilder<QuerySnapshot>(
            future: collection.get(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Text(
                  "Erro ao carregar $title: ${snapshot.error}",
                  style: const TextStyle(color: Colors.white),
                );
              } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                return const Text(
                  "Nenhum item encontrado.",
                  style: TextStyle(color: Colors.white),
                );
              }

              final items = snapshot.data!.docs;

              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: items.map((item) {
                    final data = item.data() as Map<String, dynamic>;
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TelaMusica(
                              musica: {
                                'title': data['title'],
                                'artista': data['artista'],
                                'imagem': data['imagem'],
                                'audio': data['audio'],
                                'letra': data['letra'],
                              },
                              colecao: colecao, // Passando o nome da coleção
                            ),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Column(
                          children: [
                            Image.network(
                              data['imagem'],
                              width: 115,
                              height: 115,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(height: 8),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              );
            },
          ),
        ],
      ),
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
              padding: const EdgeInsets.all(16.0),
              child: Row(
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
            ),
            // Exibe as músicas
            buildItemList(_mundiais, "Suas Faixas", "mundiais"),
            const SizedBox(height: 16),
            buildItemList(_podcasts, "PodCasts", "podcast"),
            const SizedBox(height: 16),
            buildItemList(_populares, "Artistas Populares", "populares"),
            const SizedBox(height: 16),
            buildItemList(_mundiais, "Top Mundiais", "mundiais"),
          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(17, 17, 17, 1),
    );
  }
}
