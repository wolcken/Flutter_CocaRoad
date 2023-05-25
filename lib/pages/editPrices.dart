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
  bool isView = true;
  String Name = '';

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
              isView = snapshot.data?['view'];
              Name = snapshot.data?['name'];
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
                        Container(
                          padding:
                              const EdgeInsets.only(left: 8.0, right: 100.0),
                          child: SwitchListTile(
                            title: const Text('Previsualizar'),
                            value: isView,
                            onChanged: (value) {
                              setState(() {
                                isView = value;
                              });
                            },
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
        onPressed: () async {
          num auxElegida = int.parse(elegidaController.text);
          num auxHojeadaEsp = int.parse(hojeadaespController.text);
          num auxHojeada = int.parse(hojeadaController.text);
          num auxMedianaEsp = int.parse(medianaespController.text);
          num auxMediana = int.parse(medianaController.text);
          num auxComun = int.parse(comunController.text);
          num auxChimi = int.parse(chimiController.text);
          num auxChoqueta = int.parse(choquetaController.text);
          //String auxName = (parametros['galpon']).charAt[0];
          await updatePricesId(
              parametros['department'],
              parametros['galpon'],
              auxElegida,
              auxHojeadaEsp,
              auxHojeada,
              auxMedianaEsp,
              auxMediana,
              auxComun,
              auxChimi,
              auxChoqueta,
              Name,
              isView);
          // ignore: use_build_context_synchronously
          Navigator.pop(context);
        },
        tooltip: 'Edit',
        backgroundColor: const Color.fromARGB(255, 17, 59, 59),
        child: const Icon(
          Icons.save,
          color: Colors.white,
        ),
      ),
    );
  }
}
