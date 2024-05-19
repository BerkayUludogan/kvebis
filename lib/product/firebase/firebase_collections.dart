import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kvebis_app/product/utility/collection_refence.dart';
import 'package:kvebis_app/product/utility/exception/base/base_firebase_model.dart';

enum FirebaseCollectionsEnum {
  users('users'),
  roles('roles'),
  adminUsers('admin_users'),
  addNursery('add_nursery');

  const FirebaseCollectionsEnum(this.value);
  final String value;

  CollectionReference get reference =>
      FirebaseFirestore.instance.collection(value);
}

extension FirebaseCollectionsEnumExtension on FirebaseCollectionsEnum {
  Future<List<T>> get<T extends BaseFirebaseModel<T>>(T parseModel) async {
    return CustomCollectionReference<T>(collectionPath: value).get(parseModel);
  }
}
