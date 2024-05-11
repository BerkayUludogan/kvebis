// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Login _$LoginFromJson(Map<String, dynamic> json) => Login(
      roleID: json['roleID'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$LoginToJson(Login instance) => <String, dynamic>{
      'roleID': instance.roleID,
      'email': instance.email,
      'password': instance.password,
    };
