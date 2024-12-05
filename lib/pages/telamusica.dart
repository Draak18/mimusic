import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TelaMusica extends StatefulWidget {
  final Map<String, dynamic> musica;

  const TelaMusica({super.key, required this.musica});

  @override
  State<TelaMusica> createState() => _TelaMusicaState();
}

class _TelaMusicaState extends State<TelaMusica> {
  late YoutubePlayerController _youtubeController;

  @override
  void initState() {
    super.initState();

    // Inicializar o controlador do YouTube
    _youtubeController = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.musica['audio'])!,
      flags: const YoutubePlayerFlags(
        autoPlay: false, // Não reproduz automaticamente
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _youtubeController.dispose(); // Liberar o controlador ao sair da tela
    super.dispose();
  }

  void _togglePlayPause() {
    if (_youtubeController.value.isPlaying) {
      _youtubeController.pause();
    } else {
      _youtubeController.play();
    }
    setState(() {}); // Atualiza o estado para refletir a mudança
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            // Título e artista
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple.shade800, Colors.purple.shade400],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    widget.musica['title'],
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    widget.musica['artista'],
                    style: GoogleFonts.poppins(
                      color: Colors.white70,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            
            Image.network(
              widget.musica['imagem'], // Substitua pelo URL ou caminho da imagem
              width: 300, // Ajuste conforme necessário
              height: 300, // Ajuste conforme necessário
              fit:BoxFit.cover, // Define como a imagem se ajustará ao container
            ),
            const SizedBox(height: 16),
            Center(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: IconButton(
                  key: ValueKey<bool>(_youtubeController.value.isPlaying),
                  icon: Icon(
                    _youtubeController.value.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow,
                    color: Colors.white,
                    size: 36,
                  ),
                  onPressed: _togglePlayPause,
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Player de vídeo do YouTube (invisível)
            SizedBox(
              height: 0, // Altura zero para ocultar o player
              child: YoutubePlayer(
                controller: _youtubeController,
                showVideoProgressIndicator:
                    false, // Não mostrar o indicador de progresso
                progressIndicatorColor: Colors.purple,
                aspectRatio: 16 / 9, // Usar um aspecto válido
              ),
            ),
            const SizedBox(height: 16),

            // Texto da música
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.purple.shade800,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: SingleChildScrollView(
                  child: Text(
                    widget.musica['letra'] ?? "Letra não disponível.",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
