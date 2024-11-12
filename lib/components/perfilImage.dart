import 'package:flutter/material.dart';

class PerfilImage extends StatefulWidget {
  const PerfilImage({super.key});

  @override
  State<PerfilImage> createState() => _PerfilImageState();
}

class _PerfilImageState extends State<PerfilImage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed("/usuario");
      },
      child: Image.asset(
        "assets/images/perfilImage.png",
      ),
    );
  }
}
