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

  Widget botaoLogin() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(225, 40),
        backgroundColor: const Color.fromRGBO(189, 0, 243, 1),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
      onPressed: () {
        if (keyForms.currentState!.validate()) {
          Navigator.of(context).pushNamed("/home");
        }
      },
      child: Text(
        "Faça login",
        style: GoogleFonts.montserrat(
          fontSize: 16,
          fontWeight: FontWeight.w600,
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

  Widget iconesLogin() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed("/home");
          },
          child: ClipOval(
            child: Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/images/icone_facebook.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(width: 24),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed("/home");
          },
          child: ClipOval(
            child: Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/images/icone_google.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(width: 24),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed("/home");
          },
          child: ClipOval(
            child: Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/images/icone_icloud.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }

  bool mostrarSenha = false;
  final keyForms = GlobalKey<FormState>();
  Widget formulario() {
    return Form(
        key: keyForms,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(children: [
              Container(
                constraints: const BoxConstraints(
                  maxWidth: 285,
                  minHeight: 60,
                ),
                child: TextFormField(
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
                    hintStyle:
                        const TextStyle(color: Color.fromRGBO(0, 0, 0, 400)),
                    fillColor: const Color.fromRGBO(217, 217, 217, 1),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  validator: (String? email) {
                    if (email == null || email.isEmpty) {
                      return "O email não pode ser vazio";
                    }
                    if (email.length < 6) {
                      return "O email está muito curto";
                    }
                    if (!email.contains("@")) {
                      return "O email deve conter '@'";
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: 285,
                height: 60,
                child: TextField(
                  autofocus: true,
                  obscureText: mostrarSenha == false ? true : false,
                  style: GoogleFonts.montserrat(
                      color: const Color.fromRGBO(0, 0, 0, 0.4),
                      fontSize: 13.0,
                      fontWeight: FontWeight.w600),
                  cursorColor: const Color.fromRGBO(102, 57, 115, 1),
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      child: Transform.scale(
                        scale: 0.8,
                        child: Icon(mostrarSenha == false
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      onTap: () {
                        setState(() {
                          mostrarSenha = !mostrarSenha;
                        });
                      },
                    ),
                    prefixIcon: const Icon(Icons.lock,
                        color: Color.fromRGBO(0, 0, 0, 400)),
                    hintText: "Digite sua senha",
                    hintStyle:
                        const TextStyle(color: Color.fromRGBO(0, 0, 0, 400)),
                    fillColor: const Color.fromRGBO(217, 217, 217, 1),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
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
              ),
              const SizedBox(height: 24),
              iconesLogin(),
              const SizedBox(height: 12),
              botaoLogin(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Não tem uma conta?",
                    style: GoogleFonts.montserrat(
                      color: const Color.fromRGBO(217, 217, 217, 1),
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    child: Text(
                      "Cadastre-se?",
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
            ]),
          ),
        ));
  }

  Widget mimusicTitulo() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "MI",
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: "MUSIC",
            style: GoogleFonts.montserrat(
              color: const Color.fromRGBO(189, 0, 243, 1),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
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
          child: Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  mimusicTitulo(),
                  formulario(),
                ],
              ),
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(children: [fundo(), caixaCinza()]));
  }
}
