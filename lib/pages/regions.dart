import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_cocaroad/pages/sectors.dart';
import 'package:flutter_application_cocaroad/services/firebase_service.dart';

class Regions extends StatefulWidget {
  const Regions({super.key});

  @override
  State<Regions> createState() => _RegionsState();
}

class _RegionsState extends State<Regions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Regions'),
      ),
/*
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            ElevatedButton(onPressed: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context) => const Sectors()));
            }, child: const Text('Nor Yungas')),
            ElevatedButton(onPressed: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context) => const Sectors()));
            }, child: const Text('Sud Yungas')),
          ],
        ),
      ),
*/
      body: FutureBuilder(
        future: getRegions(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              padding: const EdgeInsets.symmetric(
                //horizontal: 80.0,
                vertical: 80.0,
              ),
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                return Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const Sectors()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[400],
                      ),
                      child: Text(
                        snapshot.data?[index]['name'],
                        style: const TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
              //child: Text('cargando...'),
            );
          }
        }),
      ),
    );
  }
}
