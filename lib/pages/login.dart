import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  Widget fundo() {
    return Opacity(
      opacity: 0.2,
      child: Image.asset(
        'assets/images/wallpaper.png',
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }

  Widget caixaCinza() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(17, 17, 17, 1),
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          border: Border.all(
              width: 2.0, color: const Color.fromARGB(13, 198, 198, 198)),
        ),
      ),
    );
  }

  Widget formulario() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
            child: Column(
          children: [
            TextField(
              style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5)),
              cursorColor: const Color.fromRGBO(102, 57, 115, 1),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email,
                    color: Color.fromRGBO(0, 0, 0, 400)),
                hintText: "Digite seu email",
                hintStyle: const TextStyle(color: Color.fromRGBO(0, 0, 0, 400)),
                fillColor: const Color.fromRGBO(217, 217, 217, 1),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(
              width: 15,
              height: 15,
            ),
            TextField(
              style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5)),
              cursorColor: const Color.fromRGBO(102, 57, 115, 1),
              decoration: InputDecoration(
                prefixIcon:
                    const Icon(Icons.lock, color: Color.fromRGBO(0, 0, 0, 400)),
                hintText: "Digite sua senha",
                hintStyle: const TextStyle(color: Color.fromRGBO(0, 0, 0, 400)),
                fillColor: const Color.fromRGBO(217, 217, 217, 1),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(children: [fundo(), caixaCinza(), formulario()]));
  }
}
