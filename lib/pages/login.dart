import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late String _nombre;
  late String _password;

  // void _userLogin () {
  //   print(_nombre);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 17, 59, 59),
        title: const Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 194, 194, 194),
        ),
        child: ListView(
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
                  backgroundColor: Color.fromARGB(255, 17, 59, 59),
                  backgroundImage: AssetImage('images/pirates.png'),
                ),
                // const Text(
                //   'Login',
                //   style: TextStyle(
                //     fontFamily: 'cursive',
                //     fontSize: 30,
                //   ),
                // ),
                // const SizedBox(
                //   width: 160.0,
                //   height: 15.0,
                //   child: Divider(
                //     color: Colors.black,
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: TextField(
                    enableInteractiveSelection: false,
                    //autofocus: true,
                    //textCapitalization: TextCapitalization.characters,
                    decoration: InputDecoration(
                      hintText: 'User Name',
                      labelText: 'User Name',
                      suffixIcon: const Icon(
                        Icons.account_circle_outlined,
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
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: TextField(
                    enableInteractiveSelection: false,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                      suffixIcon: const Icon(
                        Icons.lock_outline_rounded,
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
                ),
                const Divider(
                  height: 32.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/chooseedition');
                    //_userLogin();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 17, 59, 59),
                    elevation: 20,
                    shadowColor: Colors.blueGrey[600],
                  ),
                  child: const Text(
                    'Sing in',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
