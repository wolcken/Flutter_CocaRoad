import 'package:flutter/material.dart';
import 'package:flutter_application_cocaroad/services/firebase_service.dart';

class Prices extends StatefulWidget {
  const Prices({super.key});

  @override
  State<Prices> createState() => _PricesState();
}

class _PricesState extends State<Prices> {
  String dept = 'adepcoca';

  @override
  Widget build(BuildContext context) {
    Map parametros = ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: Text(parametros['departmentName'].toString().toUpperCase()),
      ),
      body: FutureBuilder(
        future: getPrices(parametros['departmentName']),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              padding: const EdgeInsets.symmetric(
                horizontal: 60.0,
                vertical: 40.0,
              ),
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    Text(
                      snapshot.data?[index]['name'],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 15,
                          color: Colors.blueGrey),
                    ),
                    if (snapshot.data?[index]['elegida_kl'] > 0) ...[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: <Widget>[
                            const Expanded(child: Text('Elegida Kl')),
                            Text((snapshot.data?[index]['elegida_kl'])
                                .toString()),
                            const Text(' Bs'),
                          ],
                        ),
                      ),
                    ] else
                      ...[],
                    if (snapshot.data?[index]['hojeada_esp'] > 0) ...[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: <Widget>[
                            const Expanded(child: Text('Hojeada Especial')),
                            Text((snapshot.data?[index]['hojeada_esp'])
                                .toString()),
                            const Text(' Bs'),
                          ],
                        ),
                      ),
                    ] else
                      ...[],
                    if (snapshot.data?[index]['hojeada'] > 0) ...[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: <Widget>[
                            const Expanded(child: Text('Hojeada')),
                            Text((snapshot.data?[index]['hojeada']).toString()),
                            const Text(' Bs'),
                          ],
                        ),
                      ),
                    ] else
                      ...[],
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
        },
      ),
    );
  }
}
