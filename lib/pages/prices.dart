import 'package:flutter/material.dart';
import 'package:flutter_application_cocaroad/services/firebase_service.dart';

class Prices extends StatefulWidget {
  const Prices({super.key});

  @override
  State<Prices> createState() => _PricesState();
}

class _PricesState extends State<Prices> {
  @override
  Widget build(BuildContext context) {
    
    Map parametros =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 17, 59, 59),
        title: Text(
          parametros['departmentName'].toString().toUpperCase(),
          style: const TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {});
            },
            color: Colors.white,
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 194, 194, 194),
        ),
        child: FutureBuilder(
          future: getPrices(parametros['departmentName']),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 40.0,
                ),
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: <Widget>[
                      if (snapshot.data?[index]['view'] == true) ...[
                        Text(
                          snapshot.data?[index]['name'],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontSize: 20,
                              // fontFamily: 'cursive',
                              color: Color.fromARGB(255, 17, 59, 59)),
                        ),
                        if (snapshot.data?[index]['elegida_kl'] != null &&
                            snapshot.data?[index]['elegida_kl'] > 0) ...[
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: <Widget>[
                                const Image(
                                  image: AssetImage('images/hojas_coca.png'),
                                  height: 20,
                                ),
                                const Expanded(child: Text('Elegida "KL"')),
                                Text((snapshot.data?[index]['elegida_kl'])
                                    .toString()),
                                const Text(' Bs'),
                              ],
                            ),
                          ),
                        ] else
                          ...[],
                        if (snapshot.data?[index]['hojeada_esp'] != null &&
                            snapshot.data?[index]['hojeada_esp'] > 0) ...[
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: <Widget>[
                                const Image(
                                  image: AssetImage('images/hojas_coca.png'),
                                  height: 20,
                                ),
                                const Expanded(child: Text('Hojeada Especial')),
                                Text((snapshot.data?[index]['hojeada_esp'])
                                    .toString()),
                                const Text(' Bs'),
                              ],
                            ),
                          ),
                        ] else
                          ...[],
                        if (snapshot.data?[index]['hojeada'] != null &&
                            snapshot.data?[index]['hojeada'] > 0) ...[
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: <Widget>[
                                const Image(
                                  image: AssetImage('images/hojas_coca.png'),
                                  height: 20,
                                ),
                                const Expanded(child: Text('Hojeada')),
                                Text((snapshot.data?[index]['hojeada'])
                                    .toString()),
                                const Text(' Bs'),
                              ],
                            ),
                          ),
                        ] else
                          ...[],
                        if (snapshot.data?[index]['mediana_esp'] != null &&
                            snapshot.data?[index]['mediana_esp'] > 0) ...[
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: <Widget>[
                                const Image(
                                  image: AssetImage('images/hojas_coca.png'),
                                  height: 20,
                                ),
                                const Expanded(child: Text('Mediana Especial')),
                                Text((snapshot.data?[index]['mediana_esp'])
                                    .toString()),
                                const Text(' Bs'),
                              ],
                            ),
                          ),
                        ] else
                          ...[],
                        if (snapshot.data?[index]['mediana'] != null &&
                            snapshot.data?[index]['mediana'] > 0) ...[
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: <Widget>[
                                const Image(
                                  image: AssetImage('images/hojas_coca.png'),
                                  height: 20,
                                ),
                                const Expanded(child: Text('Mediana')),
                                Text((snapshot.data?[index]['mediana'])
                                    .toString()),
                                const Text(' Bs'),
                              ],
                            ),
                          ),
                        ] else
                          ...[],
                        if (snapshot.data?[index]['comun'] != null &&
                            snapshot.data?[index]['comun'] > 0) ...[
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: <Widget>[
                                const Image(
                                  image: AssetImage('images/hojas_coca.png'),
                                  height: 20,
                                ),
                                const Expanded(child: Text('Común')),
                                Text((snapshot.data?[index]['comun'])
                                    .toString()),
                                const Text(' Bs'),
                              ],
                            ),
                          ),
                        ] else
                          ...[],
                        if (snapshot.data?[index]['chimi'] != null &&
                            snapshot.data?[index]['chimi'] > 0) ...[
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: <Widget>[
                                const Image(
                                  image: AssetImage('images/hojas_coca.png'),
                                  height: 20,
                                ),
                                const Expanded(child: Text('Chimi')),
                                Text((snapshot.data?[index]['chimi'])
                                    .toString()),
                                const Text(' Bs'),
                              ],
                            ),
                          ),
                        ] else
                          ...[],
                        if (snapshot.data?[index]['choqueta'] != null &&
                            snapshot.data?[index]['choqueta'] > 0) ...[
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: <Widget>[
                                const Image(
                                  image: AssetImage('images/hojas_coca.png'),
                                  height: 20,
                                ),
                                const Expanded(child: Text('Choqueta')),
                                Text((snapshot.data?[index]['choqueta'])
                                    .toString()),
                                const Text(' Bs'),
                              ],
                            ),
                          ),
                        ] else
                          ...[],
                        const Divider(
                          color: Color.fromARGB(255, 17, 59, 59),
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
      ),
    );
  }
}
