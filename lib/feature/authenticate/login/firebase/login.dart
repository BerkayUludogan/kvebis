import 'package:json_annotation/json_annotation.dart';
import 'package:kvebis_app/product/utility/exception/base/base_firebase_model.dart';
part 'login.g.dart';

@JsonSerializable()
class Login extends BaseFirebaseModel<Login> {
  Login({
    this.roleID,
    this.email,
    this.password,
  });

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);
  String? roleID;
  String? email;
  String? password;

  Login copyWith({
    String? roleID,
    String? email,
    String? password,
  }) {
    return Login(
      roleID: roleID ?? this.roleID,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  Map<String, dynamic> toJson() => _$LoginToJson(this);

  @override
  String toString() =>
      'Login(roleID: $roleID,email: $email,password: $password)';

  @override
  Login fromJson(Map<String, dynamic> json) {
    return Login(
      roleID: json['roleID'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
    );
  }
}
