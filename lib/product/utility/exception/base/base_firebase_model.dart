abstract class BaseFirebaseModel<T> {
  String? id;
  T fromJson(Map<String, dynamic> json);
  Map<String, dynamic> toJson();
}
