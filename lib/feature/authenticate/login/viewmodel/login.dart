import 'package:kvebis_app/product/utility/exception/base/base_firebase_model.dart';

class Login extends BaseFirebaseModel<Login> {
  Login({this.roleID, this.email, this.password});
  String? roleID;
  String? email;
  String? password;

  @override
  Map<String, dynamic> toJson() {
    //yazmamışsın ki. Yaz sonra
    final data = <String, dynamic>{};
    data['roleID'] = roleID;
    data['email'] = email;
    data['password'] = password;
    return data;
  }

  @override
  Login fromJson(Map<String, dynamic> json) {
    return Login(
      email: json['email'] as String,
      password: json['password'] as String,
      roleID: json['roleID'] as String,
    );
  }
}
