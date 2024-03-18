import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
  final String? email;
  final String? password;

  LoginModel({this.email, this.password});
}
