import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
  //BaseFirebaseModel
  LoginModel({this.email, this.password});

  factory LoginModel.fromJson(Map<String, String> json) {
    return _$LoginModelFromJson(json);
  }

  String? email;
  String? password;

  Map<String, dynamic> toJson() {
    return _$LoginModelToJson(this);
  }
}
