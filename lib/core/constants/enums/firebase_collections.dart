import 'package:cloud_firestore/cloud_firestore.dart';

enum FirebaseCollections {
  addNursery,
  roles,
  users;

  CollectionReference get reference =>
      FirebaseFirestore.instance.collection(name);
}
