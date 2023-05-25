import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getRegions() async {
  List region = [];

  QuerySnapshot queryRegions = await db.collection('regions').get();

  for (var doc in queryRegions.docs) {
    final Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    final regions = {
      'name': data['name'],
      'uid': doc.id,
    };
    region.add(regions);
  }
  return region;
}

Future<void> addRegions(String name, num comun) async {
  await db.collection('regions').add({'name': name, 'comun': comun});
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


//Obtener todos los precios
Future<List> getPrices(String dept) async {
  List price = [];

  QuerySnapshot queryPrices = await db.collection('departments').doc(dept).collection('galpones').get();

  for (var doc in queryPrices.docs) {
    final Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    final prices = {
      'uid': doc.id,
      'name': data['name'],
      'elegida_kl': data['elegida_kl'],
      'hojeada_esp': data['hojeada_esp'],
      'hojeada': data['hojeada'],
      'mediana_esp': data['mediana_esp'],
      'mediana': data['mediana'],
      'comun': data['comun'],
      'chimi': data['chimi'],
      'choqueta': data['choqueta'],
      'view': data['view'],
    };
    price.add(prices);
    //print(doc.data());
  }

  return price;
}

Future getPriceId(String? depart, String? galpon) async {

  DocumentSnapshot queryPricesId = await db.collection('departments').doc(depart).collection('galpones').doc(galpon).get();

  var priceForEdit = queryPricesId.data();

  print(priceForEdit);


  return priceForEdit;
}

//Editar los precios
Future<void> updatePrices(String uid, String newName) async {
  await db.collection('departments').doc(uid).set({'name': newName});
}