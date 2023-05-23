import 'package:flutter/material.dart';
import 'package:flutter_application_cocaroad/services/firebase_service.dart';

class AddRegions extends StatefulWidget {
  const AddRegions({super.key});

  @override
  State<AddRegions> createState() => _AddRegionsState();
}

class _AddRegionsState extends State<AddRegions> {
  TextEditingController regionController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text('Add Regions'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: regionController,
              decoration: const InputDecoration(
                hintText: 'Ingrese nueva Region',
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  await addRegions(regionController.text).then((value) => {
                    Navigator.pop(context)
                  });
                },
                child: const Text('Send')),
          ],
        ),
      ),
    );
  }
}
