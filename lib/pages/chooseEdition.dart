import 'package:flutter/material.dart';

class ChooseEdition extends StatefulWidget {
  const ChooseEdition({super.key});

  @override
  State<ChooseEdition> createState() => _EditPricesState();
}

class _EditPricesState extends State<ChooseEdition> {
  String depart = '';
  String galpon = '';

  List aux = [];

  void _send() {
    Navigator.pushNamed(context, '/editprices', arguments: <String, String>{
      'department': depart.toString(),
      'galpon': galpon.toString()
    });
    setState(() {
      depart = '';
    });
  }

  void _cancel() {
    setState(() {
      depart = '';
      galpon = '';
    });
  }

  void _logout() {
    print('salir');
    Navigator.pushNamed(context, '/addregions');
  }

  @override
  Widget build(BuildContext context) {
    List listDepartments = ['adepcoca', 'sacaba'];
    List listGalponesAdepcoca = [
      'arapata',
      'coripata',
      'coroico',
      'milluhuaya'
    ];
    List listGalponesSacaba = ['sacaba'];

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
                    'Departamental',
                    style: TextStyle(
                      color: Color.fromARGB(255, 17, 59, 59),
                    ),
                  ),
                  items: listDepartments.map((dep) {
                    return DropdownMenuItem(value: dep, child: Text(dep));
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      depart = value.toString();
                    });
                  },
                ),
              ),
            ),
            if (depart != '') ...[
              if (depart == 'adepcoca') ...[
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
                      items: listGalponesAdepcoca.map((gal) {
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
              ] else ...[
                if (depart == 'sacaba') ...[
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
                        items: listGalponesSacaba.map((gal) {
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
              ],
            ] else
              ...[],
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _send,
        tooltip: 'Search',
        backgroundColor: const Color.fromARGB(255, 17, 59, 59),
        child: const Icon(
          Icons.edit,
          color: Colors.white,
        ),
      ),
    );
  }
}
