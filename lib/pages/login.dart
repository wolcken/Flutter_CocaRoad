import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  late String _nombre;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Login'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 40.0,
        ),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 80.0,
                backgroundColor: Colors.blueAccent,
                backgroundImage: AssetImage('images/pirates.png'),
              ),
              const Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'cursive',
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                width: 160.0,
                height: 15.0,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              TextField(
                enableInteractiveSelection: false,
                autofocus: true,
                //textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                  hintText: 'User Name',
                  labelText: 'User Name',
                  suffixIcon: const Icon(
                    Icons.verified_user,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                onSubmitted: (valor) {
                  _nombre = valor;
                  print('El user es: $_nombre');
                },
              ),
              TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  labelText: 'Password',
                  suffixIcon: const Icon(
                    Icons.password,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                onSubmitted: (valor) {
                  _password = valor;
                  print('El password es: $_password');
                },
              ),
              const Divider(
                height: 15.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/addregions');
                },
                child: const Text('Sing in'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}