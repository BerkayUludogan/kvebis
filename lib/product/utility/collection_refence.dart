import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kvebis_app/product/utility/exception/base/base_firebase_model.dart';

class CustomCollectionReference<T extends BaseFirebaseModel<T>> {
  CustomCollectionReference({required this.collectionPath});

  final String collectionPath;

  Future<List<String>> getAllDocumentIds() async {
    final documentIds = <String>[];
    final QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection(collectionPath).get();
    for (final DocumentSnapshot snapshot in querySnapshot.docs) {
      final documentId = snapshot.id;
      documentIds.add(documentId);
    }
    return documentIds;
  }

  Future<List<T>> get(T parseModel) async {
    final CollectionReference collectionReference =
        FirebaseFirestore.instance.collection(collectionPath);

    final response = await collectionReference
        .withConverter<T>(
          fromFirestore: (snapshot, options) {
            final data = snapshot.data();

            if (data != null) return parseModel.fromJson(data);
            throw Exception('Data is null');
          },
          toFirestore: (value, options) => value.toJson(),
        )
        .get();
    final list = List<T>.empty(growable: true);
    for (final element in response.docs) {
      list.add(element.data());
    }
    return list;
  }
}
