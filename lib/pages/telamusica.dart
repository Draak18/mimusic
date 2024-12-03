import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TelaMusica extends StatefulWidget {
  const TelaMusica({super.key});

  @override
  State<TelaMusica> createState() => TelaMusicaState();
}

class TelaMusicaState extends State<TelaMusica> {
  final CollectionReference _musicas =
      FirebaseFirestore.instance.collection('musicas');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MiMusic",
          style: GoogleFonts.montserrat(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      body: FutureBuilder<QuerySnapshot>(
        future: _musicas.get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
                child: Text("Erro ao carregar músicas: ${snapshot.error}"));
          } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const Center(child: Text("Nenhuma música encontrada."));
          }

          final musicas = snapshot.data!.docs;

          return ListView.builder(
            itemCount: musicas.length,
            itemBuilder: (context, index) {
              final musica = musicas[index].data() as Map<String, dynamic>;
              return ListTile(
                leading: Image.network(
                  musica['imagem'],
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                title: Text(
                  musica['title'],
                  style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(musica['artista']),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetalheMusica(musica: musica),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

class DetalheMusica extends StatelessWidget {
  final Map<String, dynamic> musica;

  const DetalheMusica({super.key, required this.musica});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(musica['title'], style: GoogleFonts.montserrat()),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(musica['imagem'], height: 200),
            const SizedBox(height: 16),
            Text(
              musica['artista'],
              style: GoogleFonts.montserrat(
                  fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              musica['letra'],
              style: GoogleFonts.montserrat(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
