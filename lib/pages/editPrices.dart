import 'package:flutter/material.dart';
import 'package:flutter_application_cocaroad/services/firebase_service.dart';

class EditPrices extends StatefulWidget {
  const EditPrices({super.key});

  @override
  State<EditPrices> createState() => _ChooseEditState();
}

class _ChooseEditState extends State<EditPrices> {
  TextEditingController elegidaController = TextEditingController(text: '');
  TextEditingController hojeadaespController = TextEditingController(text: '');
  TextEditingController hojeadaController = TextEditingController(text: '');
  TextEditingController medianaespController = TextEditingController(text: '');
  TextEditingController medianaController = TextEditingController(text: '');
  TextEditingController comunController = TextEditingController(text: '');
  TextEditingController chimiController = TextEditingController(text: '');
  TextEditingController choquetaController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Map parametros =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 17, 59, 59),
        title: Text(
          parametros['galpon'].toString().toUpperCase(),
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: FutureBuilder(
          future: getPriceId(parametros['department'], parametros['galpon']),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              elegidaController.text =
                  (snapshot.data?['elegida_kl']).toString();
              hojeadaespController.text =
                  (snapshot.data?['hojeada_esp']).toString();
              hojeadaController.text = (snapshot.data?['hojeada']).toString();
              medianaespController.text =
                  (snapshot.data?['mediana_esp']).toString();
              medianaController.text = (snapshot.data?['mediana']).toString();
              comunController.text = (snapshot.data?['comun']).toString();
              chimiController.text = (snapshot.data?['chimi']).toString();
              choquetaController.text = (snapshot.data?['choqueta']).toString();
              return ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 15,
                          ),
                          child: TextField(
                            controller: elegidaController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Elegida Kl",
                              labelText: "Elegida Kl",
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 15,
                          ),
                          child: TextField(
                            controller: hojeadaespController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Hojeada Especial",
                              labelText: "Hojeada Especial",
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 15,
                          ),
                          child: TextField(
                            controller: hojeadaController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Hojeada",
                              labelText: "Hojeada",
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 15,
                          ),
                          child: TextField(
                            controller: medianaespController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Mediana Especial",
                              labelText: "Mediana Especial",
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 15,
                          ),
                          child: TextField(
                            controller: medianaController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Mediana",
                              labelText: "Mediana",
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 15,
                          ),
                          child: TextField(
                            controller: comunController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Común",
                              labelText: "Común",
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 15,
                          ),
                          child: TextField(
                            controller: chimiController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Chimi",
                              labelText: "Chimi",
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 15,
                          ),
                          child: TextField(
                            controller: choquetaController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Choqueta",
                              labelText: "Choqueta",
                            ),
                          ),
                        ),
                      ],
                    );
                  });
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        backgroundColor: const Color.fromARGB(255, 17, 59, 59),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
