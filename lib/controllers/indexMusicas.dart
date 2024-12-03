class Musica {
  final String titulo;
  final String artista;
  final String imagem;
  final String caminhoAudio;
  final int id;

  Musica({
    required this.titulo,
    required this.artista,
    required this.imagem,
    required this.caminhoAudio,
    required this.id,
  });
}

List<Musica> indexMusicas = [
  Musica(
    titulo: "Rainha da Pista",
    artista: "Cone Crew",
    imagem: "assets/imagensmusica/ConeCrew.png",
    caminhoAudio: "assets/musicas/rainhaDaPista.mp3",
    id: 1,
  ),
  Musica(
    titulo: "Back To Black",
    artista: "Amy Winehouse",
    imagem: "assets/imagensmusica/BackToBlack.png",
    caminhoAudio: "assets/musicas/backToBlack.mp3",
    id: 2,
  ),
  Musica(
    titulo: "Irmã Gostosa",
    artista: "Livinho",
    imagem: "assets/imagensmusica/livinho.png",
    caminhoAudio: "assets/musicas/irmaGostosa.mp3",
    id: 3,
  )
];
