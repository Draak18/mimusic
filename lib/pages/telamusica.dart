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
    String? videoId = YoutubePlayer.convertUrlToId(widget.musica['audio']);
    if (videoId == null) {
      debugPrint('URL do vídeo inválida: ${widget.musica['audio']}');
      return;
    }

    _youtubeController = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true, // Vídeo começa automaticamente
        mute: false, // Áudio ativado
        hideControls: true, // Controles ocultos
        showLiveFullscreenButton: false, // Remover o botão de tela cheia
      ),
    );
  }

  @override
  void dispose() {
    _youtubeController.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    if (_youtubeController.value.isPlaying) {
      _youtubeController.pause();
    } else {
      _youtubeController.play();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(17, 17, 17, 1),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Center(
          // Centralizando o título
          child: RichText(
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
        ),
      ),
      body: Container(
        color: const Color.fromRGBO(17, 17, 17, 1),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // Título e artista
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment(0.0, 0.9),
                      colors: [Color(0xFF560A6C), Colors.black],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text(
                        widget.musica['title'],
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        widget.musica['artista'],
                        style: GoogleFonts.poppins(
                          color: Colors.white70,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 16),
                      // Imagem
                      Image.network(
                        widget.musica['imagem'],
                        width: 300,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),

                // Player oculto (não exibe o player na tela)
                SizedBox(
                  height: 0, // Player escondido
                  child: YoutubePlayer(
                    controller: _youtubeController,
                    showVideoProgressIndicator: false, // Não exibe o progresso
                    progressIndicatorColor: Colors.purple,
                    aspectRatio:
                        16 / 9, // Não é relevante, mas mantém a consistência
                  ),
                ),

                // Controles de reprodução
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.skip_previous),
                      color: Colors.white,
                      iconSize: 30,
                      onPressed: () {
                        // Implementar lógica para música anterior
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        _youtubeController.value.isPlaying
                            ? Icons.play_arrow // Ícone de pause
                            : Icons.pause, // Ícone de play
                        color: Colors.white,
                        size: 42,
                      ),
                      onPressed: _togglePlayPause,
                    ),
                    IconButton(
                      icon: const Icon(Icons.skip_next),
                      color: Colors.white,
                      iconSize: 30,
                      onPressed: () {
                        // Implementar lógica para próxima música
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Texto da música
                Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: const Color(0xFF3E2941),
                    borderRadius: BorderRadius.circular(10),
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
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
