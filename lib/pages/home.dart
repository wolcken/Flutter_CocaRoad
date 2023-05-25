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
        backgroundColor: const Color.fromARGB(255, 17, 59, 59),
        // title: const Text(
        //   'CocaRoad',
        //   style: TextStyle(color: Colors.white),
        // ),
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/coca_leaves.png',
              fit: BoxFit.contain,
              height: 24,
            ),
            Container(
              padding: const EdgeInsets.only(left: 16.0),
              child: const Text(
                'CocaRoad',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        actions: <Widget> [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            // color: Colors.white,
            icon: Image.asset(
              'images/coca_leaves.png',
              height: 24,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          // image: DecorationImage(
          //     image: AssetImage('images/pirates.png'),
          //     repeat: ImageRepeat.repeat),
          color: Color.fromARGB(255, 194, 194, 194),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/prices',
                          arguments: <String, String>{
                            'departmentName': 'adepcoca'
                          });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 17, 59, 59),
                        elevation: 20,
                        shadowColor: Colors.blueGrey[600]),
                    child: const Text(
                      'Adepcoca',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/prices',
                          arguments: <String, String>{
                            'departmentName': 'sacaba'
                          });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 17, 59, 59),
                        elevation: 20,
                        shadowColor: Colors.blueGrey[600]),
                    child: const Text(
                      'Sacaba',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 17, 59, 59),
                        elevation: 20,
                        shadowColor: Colors.blueGrey[600]),
                    child: const Text(
                      'Minoristas',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 17, 59, 59),
                        elevation: 20,
                        shadowColor: Colors.blueGrey[600]),
                    child: const Text(
                      'Noticias',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
