import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login_page';

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool mostrarRegistro = true;
  String email = '';
  String password = '';
  String nombre = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login Page",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 35.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        mostrarRegistro = true;
                      });
                    },
                    child: Text(
                      "Registrarse",
                      style: TextStyle(
                        fontSize: 25,
                        color: mostrarRegistro
                            ? Colors.white
                            : const Color.fromARGB(255, 206, 204, 204),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        mostrarRegistro = false;
                      });
                    },
                    child: Text(
                      "Iniciar Sesion",
                      style: TextStyle(
                        fontSize: 25,
                        color: mostrarRegistro
                            ? const Color.fromARGB(255, 206, 204, 204)
                            : Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              if (mostrarRegistro) ...[
                SizedBox(height: 25.0),
                _textFieldNombre(),
                SizedBox(height: 20.0),
                _textFieldEmail(),
                SizedBox(height: 25.0),
                _textFieldPassword(),
                SizedBox(height: 25.0),
                _buttonLogin(),
              ] else ...[
                SizedBox(height: 25.0),
                _textFieldEmail(),
                SizedBox(height: 25.0),
                _textFieldPassword(),
                SizedBox(height: 25.0),
                _buttonLogin(),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buttonLogin() {
  return Container(
    width: 240.0,
    height: 50.0,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: TextButton(
      onPressed: () {
        // Implement login functionality here
      },
      child: Text(
        "Iniciar Sesion",
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget _textFieldNombre() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 30.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: TextField(
      decoration: InputDecoration(
        labelText: 'Nombre',
        prefixIcon: Icon(Icons.person),
        hintText: 'Ingrese su nombre',
        hintStyle: TextStyle(color: Colors.grey),
      ),
      onChanged: (value) => {},
    ),
  );
}

Widget _textFieldEmail() {
  return _textFieldGeneral(
    labelText: "Email",
    icon: Icons.email,
    hintText: "example@test.com",
    onChanged: (value) {},
    keyboardType: TextInputType.emailAddress,
  );
}

Widget _textFieldPassword() {
  return _textFieldGeneral(
    labelText: "Contraseña",
    icon: Icons.lock,
    hintText: "Ingrese su contraseña",
    onChanged: (value) {},
    isPassword: true,
  );
}

class _textFieldGeneral extends StatelessWidget {
  final String labelText;
  final IconData icon;
  final String hintText;
  final TextInputType keyboardType;
  final Function(String) onChanged;
  final bool isPassword;
  const _textFieldGeneral({
    required this.labelText,
    required this.icon,
    required this.hintText,
    required this.onChanged,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextField(
        keyboardType: keyboardType,
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: Icon(icon),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
