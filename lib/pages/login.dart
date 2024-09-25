import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

  bool caixaMarcada = false;
  Widget caixaDeMarcacao() {
    return GestureDetector(
      onTap: () {
        setState(() {
          caixaMarcada = !caixaMarcada;
        });
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(217, 217, 217, 1),
              border: Border.all(
                color: const Color.fromRGBO(189, 0, 243, 1),
                width: 1,
              ),
            ),
          ),
          caixaMarcada
              ? SizedBox(
                  height: 15,
                  width: 15,
                  child: Center(
                    child: Text(
                      'X',
                      style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: const Color.fromRGBO(189, 0, 243, 1),
                          height: 1,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              : Container(),
        ],
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
              keyboardType: TextInputType.emailAddress,
              style: GoogleFonts.montserrat(
                  color: const Color.fromRGBO(0, 0, 0, 0.4),
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600),
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
              height: 16,
            ),
            TextField(
              style: GoogleFonts.montserrat(
                  color: const Color.fromRGBO(0, 0, 0, 0.4),
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600),
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
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                caixaDeMarcacao(),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  "Lembre-se de mim",
                  style: GoogleFonts.montserrat(
                    color: const Color.fromRGBO(217, 217, 217, 1),
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                GestureDetector(
                  child: Text(
                    "Esqueceu a senha?",
                    style: GoogleFonts.montserrat(
                      color: const Color.fromRGBO(189, 0, 243, 1),
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed("/cadastro");
                  },
                ),
              ],
            )
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
