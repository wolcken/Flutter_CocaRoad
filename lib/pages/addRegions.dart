import 'package:flutter/material.dart';
//import 'package:flutter_application_cocaroad/services/firebase_service.dart';

class AddRegions extends StatefulWidget {
  const AddRegions({super.key});

  @override
  State<AddRegions> createState() => _AddRegionsState();
}

class _AddRegionsState extends State<AddRegions> {
  TextEditingController regionController = TextEditingController(text: '');
  TextEditingController comunController = TextEditingController(text: '');

  String dept = 'adepcoca';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text('Add Regions'),
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(15.0),
      //   child: Column(
      //     children: [
      //       TextField(
      //         controller: regionController,
      //         decoration: const InputDecoration(
      //           hintText: 'Ingrese nueva Region',
      //         ),
      //       ),
      //       TextField(
      //         controller: comunController,
      //         decoration: const InputDecoration(
      //           hintText: 'Ingrese nueva comun',
      //         ),
      //       ),
      //       ElevatedButton(
      //           onPressed: () async {
      //             num aux = int.parse(comunController.text);
      //             await addRegions(regionController.text, aux).then((value) => {
      //               Navigator.pop(context)
      //             });
      //           },
      //           child: const Text('Send')),
      //     ],
      //   ),
      // ),

      // body: FutureBuilder(
      //   future: getPriceId(),
      //   builder: ((context, snapshot) {
      //     if (snapshot.hasData) {
      //       return ListView.builder(
      //         padding: const EdgeInsets.symmetric(
      //           horizontal: 20.0,
      //           vertical: 20.0,
      //         ),
      //         itemCount: 1,
      //         itemBuilder: (context, index) {
      //           return Column(
      //             children: <Widget>[
      //               Text(snapshot.data?['name']),
      //               Row(
      //                 children: <Widget>[
      //                   const Text('Elegida Kl'),
      //                   Text((snapshot.data?['elegida_kl']).toString()),
      //                 ],
      //               ),
      //               Row(
      //                 children: <Widget>[
      //                   const Text('Hojeada Especial'),
      //                   Text((snapshot.data?['hojeada_esp']).toString()),
      //                 ],
      //               ),
      //               const SizedBox(
      //                 height: 20,
      //               ),
      //             ],
      //           );
      //         },
      //       );
      //     } else {
      //       return const Center(
      //         child: CircularProgressIndicator(),
      //         //child: Text('cargando...'),
      //       );
      //     }
      //   }),
      // ),
    );
  }
}
