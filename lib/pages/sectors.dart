import 'package:flutter/material.dart';

//Servicios
import 'package:flutter_application_cocaroad/services/firebase_service.dart';

class Sectors extends StatefulWidget {
  const Sectors({super.key});

  @override
  State<Sectors> createState() => _SectorsState();
}

class _SectorsState extends State<Sectors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('Sectors'),
      ),
/*
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget> [
            Row(
              children: <Widget> [
                Expanded(child: Text('Coripata')),
                Text('1500 bs'),
                Icon(Icons.price_check)
              ],
            ),
            Divider(),
            Row(
              children: <Widget> [
                Expanded(child: Text('Arapata')),
                Text('1800 bs'),
                Icon(Icons.price_check)
              ],
            ),
            Divider(),
          ],
        ),
      ),
*/
      body: FutureBuilder(
        future: getUsers(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                return Text(snapshot.data?[index]['first']);
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }),
      ),
    );
  }
}
