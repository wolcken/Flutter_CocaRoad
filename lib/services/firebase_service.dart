import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getRegions() async {
  List region = [];

  CollectionReference collectionReferenceRegions = db.collection('regions');

  QuerySnapshot queryRegions = await collectionReferenceRegions.get();

  queryRegions.docs.forEach((element) {
    region.add(element.data());
  });
  return region;
}

Future<void> addRegions(String name) async {
  await db.collection('regions').add({'name': name});
}

Future<List> getUsers() async {
  List user = [];

  CollectionReference collectionReferenceUsers = db.collection('users');

  QuerySnapshot queryUsers = await collectionReferenceUsers.get();

  queryUsers.docs.forEach((element) {
    user.add(element.data());
    //var ele = element.data();
    //print('este es el elemento-----------$ele');
  });

  return user;
}
