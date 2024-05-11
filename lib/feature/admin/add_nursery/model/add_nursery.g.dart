// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_nursery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddNursery _$AddNurseryFromJson(Map<String, dynamic> json) => AddNursery(
      monthlyFeeForNursery: (json['monthlyFeeForNursery'] as num?)?.toInt(),
      nurseryAddress: json['nurseryAddress'] as String?,
      nurseryDistrict: json['nurseryDistrict'] as String?,
      nurseryLocationProvince: json['nurseryLocationProvince'] as String?,
      nurseryName: json['nurseryName'] as String?,
      nurseryOwnersName: json['nurseryOwnersName'] as String?,
      nurseryOwnersPhone: json['nurseryOwnersPhone'] as String?,
      nurseryOwnersSurname: json['nurseryOwnersSurname'] as String?,
    );

Map<String, dynamic> _$AddNurseryToJson(AddNursery instance) =>
    <String, dynamic>{
      'monthlyFeeForNursery': instance.monthlyFeeForNursery,
      'nurseryAddress': instance.nurseryAddress,
      'nurseryDistrict': instance.nurseryDistrict,
      'nurseryLocationProvince': instance.nurseryLocationProvince,
      'nurseryName': instance.nurseryName,
      'nurseryOwnersName': instance.nurseryOwnersName,
      'nurseryOwnersPhone': instance.nurseryOwnersPhone,
      'nurseryOwnersSurname': instance.nurseryOwnersSurname,
    };
