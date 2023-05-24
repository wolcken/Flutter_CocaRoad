import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('CocaRoad'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              icon: const Icon(Icons.add)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/prices',
                      arguments: <String, String>{
                        'departmentName': 'adepcoca'
                      });
                },
                child: const Text('Adepcoca')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/prices',
                      arguments: <String, String>{
                        'departmentName': 'sacaba'
                      });
                },
                child: const Text('Sacaba')),
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.pushNamed(context, '/prices',
            //           arguments: <String, String>{
            //             'departmentName': 'minorista'
            //           });
            //     },
            //     child: const Text('Minoristas')),
          ],
        ),
      ),
    );
  }
}
