import 'package:kvebis_app/product/utility/collection_refence.dart';
import 'package:kvebis_app/product/utility/exception/base/base_firebase_model.dart';

enum FirebaseCollectionsEnum {
  users('users'),
  roles('roles');

  const FirebaseCollectionsEnum(this.value);
  final String value;
}

extension FirebaseCollectionsEnumExtension on FirebaseCollectionsEnum {
  Future<List<T>> get<T extends BaseFirebaseModel<T>>(T parseModel) async {
    return CustomCollectionReference<T>(collectionPath: value).get(parseModel);
  }
}
