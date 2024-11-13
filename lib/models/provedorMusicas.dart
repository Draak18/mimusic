import 'package:mimusic/models/musicas.dart';
import 'package:audioplayers/audioplayers.dart';

class ProvedorMusicas {
  final AudioPlayer audioPlayer = AudioPlayer();
  int currentIndex = 0;
  List<Musica> musicas = [];

  ProvedorMusicas() {
    musicas = getMusicas();
  }
  List<Musica> getMusicas() {
    return [
      Musica(
        titulo: "Irmã Gostosa",
        artista: "Livinho",
        imagem: "assets/imagensmusica/livinho.png",
        caminhoAudio: "assets/audios/irmaGostosa.mp3",
      ),
      Musica(
        titulo: "Rainha da Pista",
        artista: "Cone Crew",
        imagem: "assets/imagensmusica/BackToBlack.png",
        caminhoAudio: "assets/audios/rainhaDaPista.mp3",
      ),
      Musica(
        titulo: "Back to Black",
        artista: "Amy Winehouse",
        imagem: "assets/imagensmusica/BackToBlack.png",
        caminhoAudio: "assets/audios/backToBlack.mp3",
      ),
    ];
  }
}
