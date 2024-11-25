import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() {
    return CadastroState();
  }
}

class CadastroState extends State<Cadastro> {
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

  Widget iconesLogin() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          // Icone Facebook
          onTap: () {
            Navigator.of(context).pushNamed("/usuarios");
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
          // Icone Google
          onTap: () {
            Navigator.of(context).pushNamed("/usuarios");
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
          // Icone Icloud
          onTap: () {
            Navigator.of(context).pushNamed("/usuarios");
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

  Widget botaoCadastro() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(225, 40),
        backgroundColor: const Color.fromRGBO(189, 0, 243, 1),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
      onPressed: _register,
      child: Text(
        "Cadastre-se",
        style: GoogleFonts.montserrat(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  // Booleanos
  bool mostrarSenha = false;
  bool mostrarConfirmarSenha = false;

  //Final
  final keyForms = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController confirmeSenhaController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  Future<void> _register() async {
    if (keyForms.currentState!.validate()) {
      try {
        // Tenta criar o usuário com e-mail e senha
        UserCredential userCredential =
            await _auth.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: confirmeSenhaController.text.trim(),
        );

        // Tenta atualizar o nome do usuário
        await userCredential.user!
            .updateDisplayName(_usernameController.text.trim());
        await userCredential.user!.reload();
        _auth.currentUser; // Recarrega o usuário atualizado

        // Exibe uma notificação de sucesso e redireciona
        _showSnackBar('Cadastro realizado com sucesso!', Colors.green);
        Navigator.pop(context); // Volta para a tela de login após o cadastro
      } catch (e) {
        // Exibe uma notificação de erro específico
        _showSnackBar('Erro no cadastro: ${e.toString()}', Colors.red);
      }
    }
  }

  void _showSnackBar(String message, Color color) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: color,
      duration: Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  Widget formulario() {
    return Form(
      key: keyForms,
      child: Center(
        child: Column(children: [
          Container(
            constraints: const BoxConstraints(
              maxWidth: 285,
              minHeight: 60,
            ),
            // Email
            child: TextFormField(
              controller: _emailController,
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
          Container(
            constraints: const BoxConstraints(
              maxWidth: 285,
              minHeight: 60,
            ),
            // Usuario
            child: TextFormField(
              controller: _usernameController,
              autofocus: true,
              style: GoogleFonts.montserrat(
                  color: const Color.fromRGBO(0, 0, 0, 0.4),
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600),
              cursorColor: const Color.fromRGBO(102, 57, 115, 1),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person,
                    color: Color.fromRGBO(0, 0, 0, 400)),
                hintText: "Nome de Usuário",
                hintStyle: const TextStyle(color: Color.fromRGBO(0, 0, 0, 400)),
                fillColor: const Color.fromRGBO(217, 217, 217, 1),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  borderSide: BorderSide.none,
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, insira um nome de usuário';
                }
                return null;
              },
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            constraints: const BoxConstraints(
              maxWidth: 285,
              minHeight: 60,
            ),
            // Senha
            child: TextFormField(
              controller: senhaController,
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
                      child: Icon(
                        mostrarSenha == false
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: const Color.fromRGBO(72, 68, 78, 1),
                      )),
                  onTap: () {
                    setState(() {
                      mostrarSenha = !mostrarSenha;
                    });
                  },
                ),
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
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor, insira uma senha';
                } else if (value.length < 6) {
                  return 'A senha deve ter pelo menos 6 caracteres';
                }
                return null;
              },
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            constraints: const BoxConstraints(
              maxWidth: 285,
              minHeight: 60,
            ),
            // Confirma Senha
            child: TextFormField(
              controller: confirmeSenhaController,
              autofocus: true,
              obscureText: mostrarConfirmarSenha == false ? true : false,
              style: GoogleFonts.montserrat(
                  color: const Color.fromRGBO(0, 0, 0, 0.4),
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600),
              cursorColor: const Color.fromRGBO(102, 57, 115, 1),
              decoration: InputDecoration(
                suffixIcon: GestureDetector(
                  child: Transform.scale(
                    scale: 0.8,
                    child: Icon(
                      mostrarConfirmarSenha == false
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: const Color.fromRGBO(72, 68, 78, 1),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      mostrarConfirmarSenha = !mostrarConfirmarSenha;
                    });
                  },
                ),
                prefixIcon:
                    const Icon(Icons.lock, color: Color.fromRGBO(0, 0, 0, 400)),
                hintText: "Confirme sua senha",
                hintStyle: const TextStyle(color: Color.fromRGBO(0, 0, 0, 400)),
                fillColor: const Color.fromRGBO(217, 217, 217, 1),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  borderSide: BorderSide.none,
                ),
              ),
              validator: (String? confirmeSenha) {
                if (confirmeSenha == null || confirmeSenha.isEmpty) {
                  return "A confirmação de senha não pode ser vazia";
                }
                if (confirmeSenha != senhaController.text) {
                  return "As senhas não são iguais";
                }
                return null;
              },
            ),
          ),
          const SizedBox(height: 20),
          iconesLogin(),
          const SizedBox(height: 12),
          botaoCadastro(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Já tem uma Conta
              Text(
                "Já tem uma conta??",
                style: GoogleFonts.montserrat(
                  color: const Color.fromRGBO(217, 217, 217, 1),
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              // Faça login
              GestureDetector(
                child: Text(
                  "Faça login",
                  style: GoogleFonts.montserrat(
                    color: const Color.fromRGBO(189, 0, 243, 1),
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed("/login");
                },
              ),
            ],
          )
        ]),
      ),
    );
  }

  Widget caixaCinza() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              minHeight: 794,
            ),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(17, 17, 17, 1),
                borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                border: Border.all(
                    width: 2.0, color: const Color.fromARGB(13, 198, 198, 198)),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  mimusicTitulo(),
                  const SizedBox(height: 250),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          formulario(),
                          Positioned(
                            top: -225,
                            left: 0,
                            right: 0,
                            child: SizedBox(
                              height: 250,
                              width: 400,
                              child: Image.asset(
                                "assets/images/gatoLogo.png",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(children: [fundo(), caixaCinza()]));
  }
}
