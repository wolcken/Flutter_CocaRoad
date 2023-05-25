import 'package:flutter/material.dart';

class ChooseEdition extends StatefulWidget {
  const ChooseEdition({super.key});

  @override
  State<ChooseEdition> createState() => _EditPricesState();
}

class _EditPricesState extends State<ChooseEdition> {
  String? depart;
  String? galpon;

  List aux = [];

  //datos del comumento de prices;
  TextEditingController elegidaController = TextEditingController(text: '');

  void _send() {
    Navigator.pushNamed(context, '/editprices',
        arguments: <String, String>{'department': depart.toString(), 'galpon': galpon.toString()});
    setState(() {
      depart = null;
      galpon = null;
    });
  }

  void _cancel() {
    setState(() {
      depart = null;
      galpon = null;
    });
  }

  void _logout() {
    print('salir');
    Navigator.pushNamed(context, '/addregions');
  }

  @override
  Widget build(BuildContext context) {
    List listGalpones = ['arapata', 'coripata'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 17, 59, 59),
        title: const Text(
          'Choose Edition',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              _cancel();
            },
            color: Colors.white,
            icon: const Icon(Icons.close_rounded),
          ),
          IconButton(
            onPressed: () {
              _logout();
            },
            color: Colors.white,
            icon: const Icon(Icons.exit_to_app_rounded),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      depart = 'adepcoca';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 26, 92, 92),
                    elevation: 20,
                    shadowColor: Colors.blueGrey[600],
                  ),
                  child: const Text(
                    'Adepcoca',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        depart = 'sacaba';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 26, 92, 92),
                        elevation: 20,
                        shadowColor: Colors.blueGrey[600]),
                    child: const Text(
                      'Sacaba',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    )),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        depart = 'minoritas';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 26, 92, 92),
                        elevation: 20,
                        shadowColor: Colors.blueGrey[600]),
                    child: const Text(
                      'Minoristas',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    )),
              ],
            ),
            if (depart != null) ...[
              Container(
                padding: const EdgeInsets.all(24.0),
                child: Center(
                  child: DropdownButtonFormField(
                    style: const TextStyle(
                      color: Color.fromARGB(255, 26, 92, 92),
                      fontSize: 16,
                    ),
                    icon: Image.asset('images/coca_leaves.png'),
                    dropdownColor: const Color.fromARGB(255, 255, 255, 255),
                    hint: const Text(
                      'Elige un Galpon',
                      style: TextStyle(
                        color: Color.fromARGB(255, 17, 59, 59),
                      ),
                    ),
                    items: listGalpones.map((gal) {
                      return DropdownMenuItem(value: gal, child: Text(gal));
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        galpon = value.toString();
                      });
                    },
                  ),
                ),
              ),
            ] else
              ...[],
            // if (galpon != null) ...[
            //   Container(
            //     padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
            //     child: const TextField(
            //       keyboardType: TextInputType.number,
            //       decoration: InputDecoration(
            //         border: OutlineInputBorder(),
            //         hintText: "Elegida Kl",
            //         labelText: "Elegida Kl",
            //       ),
            //     ),
            //   ),
            //   Container(
            //     padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
            //     child: const TextField(
            //       keyboardType: TextInputType.number,
            //       decoration: InputDecoration(
            //         border: OutlineInputBorder(),
            //         hintText: "Hojeada Especial",
            //         labelText: "Hojeada Especial",
            //       ),
            //     ),
            //   ),
            //   Container(
            //     padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
            //     child: const TextField(
            //       keyboardType: TextInputType.number,
            //       decoration: InputDecoration(
            //         border: OutlineInputBorder(),
            //         hintText: "Hojeada",
            //         labelText: "Hojeada",
            //       ),
            //     ),
            //   ),
            //   Container(
            //     padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
            //     child: const TextField(
            //       keyboardType: TextInputType.number,
            //       decoration: InputDecoration(
            //         border: OutlineInputBorder(),
            //         hintText: "Mediana Especial",
            //         labelText: "Mediana Especial",
            //       ),
            //     ),
            //   ),
            //   Container(
            //     padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
            //     child: const TextField(
            //       keyboardType: TextInputType.number,
            //       decoration: InputDecoration(
            //         border: OutlineInputBorder(),
            //         hintText: "Mediana",
            //         labelText: "Mediana",
            //       ),
            //     ),
            //   ),
            //   Container(
            //     padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
            //     child: const TextField(
            //       keyboardType: TextInputType.number,
            //       decoration: InputDecoration(
            //         border: OutlineInputBorder(),
            //         hintText: "Común",
            //         labelText: "Común",
            //       ),
            //     ),
            //   ),
            //   Container(
            //     padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
            //     child: const TextField(
            //       keyboardType: TextInputType.number,
            //       decoration: InputDecoration(
            //         border: OutlineInputBorder(),
            //         hintText: "Chimi",
            //         labelText: "Chimi",
            //       ),
            //     ),
            //   ),
            //   Container(
            //     padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
            //     child: const TextField(
            //       keyboardType: TextInputType.number,
            //       decoration: InputDecoration(
            //         border: OutlineInputBorder(),
            //         hintText: "Choqueta",
            //         labelText: "Choqueta",
            //       ),
            //     ),
            //   ),
            // ] else
            //   ...[],
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _send,
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
