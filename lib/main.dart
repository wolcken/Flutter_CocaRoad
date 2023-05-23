import 'package:flutter/material.dart';

//importaciones firebase
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_cocaroad/pages/addRegions.dart';
import 'package:flutter_application_cocaroad/pages/home.dart';
import 'package:flutter_application_cocaroad/pages/login.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App CocaRoad',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => const Home(),
        '/login':(context) => const Login(),
        '/addregions':(context) => const AddRegions(),
      },
    );
  }
}


