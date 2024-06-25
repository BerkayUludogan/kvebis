// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_nursery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Nursery _$NurseryFromJson(Map<String, dynamic> json) => Nursery(
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

Map<String, dynamic> _$NurseryToJson(Nursery instance) => <String, dynamic>{
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
