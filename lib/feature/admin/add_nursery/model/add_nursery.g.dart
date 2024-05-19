// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_nursery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddNursery _$AddNurseryFromJson(Map<String, dynamic> json) => AddNursery(
      nurseryName: json['nurseryName'] as String?,
      nurseryOwnersName: json['nurseryOwnersName'] as String?,
      nurseryOwnersSurname: json['nurseryOwnersSurname'] as String?,
      nurseryOwnersPhone: json['nurseryOwnersPhone'] as String?,
      nurseryDistrict: json['nurseryDistrict'] as String?,
      nurseryLocationProvince: json['nurseryLocationProvince'] as String?,
      nurseryAddress: json['nurseryAddress'] as String?,
      monthlyFeeForNursery: json['monthlyFeeForNursery'] as String?,
      adminID: json['adminID'] as String?,
    );

Map<String, dynamic> _$AddNurseryToJson(AddNursery instance) =>
    <String, dynamic>{
      'nurseryName': instance.nurseryName,
      'nurseryOwnersName': instance.nurseryOwnersName,
      'nurseryOwnersSurname': instance.nurseryOwnersSurname,
      'nurseryOwnersPhone': instance.nurseryOwnersPhone,
      'nurseryDistrict': instance.nurseryDistrict,
      'nurseryLocationProvince': instance.nurseryLocationProvince,
      'nurseryAddress': instance.nurseryAddress,
      'monthlyFeeForNursery': instance.monthlyFeeForNursery,
      'adminID': instance.adminID,
    };
