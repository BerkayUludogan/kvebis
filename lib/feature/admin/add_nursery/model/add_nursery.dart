import 'package:json_annotation/json_annotation.dart';
part 'add_nursery.g.dart';

@JsonSerializable()
class AddNursery {
  AddNursery({
    this.monthlyFeeForNursery,
    this.nurseryAddress,
    this.nurseryDistrict,
    this.nurseryLocationProvince,
    this.nurseryName,
    this.nurseryOwnersName,
    this.nurseryOwnersPhone,
    this.nurseryOwnersSurname,
  });

  factory AddNursery.fromJson(Map<String, dynamic> json) =>
      _$AddNurseryFromJson(json);
  int? monthlyFeeForNursery;
  String? nurseryAddress;
  String? nurseryDistrict;
  String? nurseryLocationProvince;
  String? nurseryName;
  String? nurseryOwnersName;
  String? nurseryOwnersPhone;
  String? nurseryOwnersSurname;

  Map<String, dynamic> toJson() => _$AddNurseryToJson(this);

  AddNursery copyWith({
    int? monthlyFeeForNursery,
    String? nurseryAddress,
    String? nurseryDistrict,
    String? nurseryLocationProvince,
    String? nurseryName,
    String? nurseryOwnersName,
    String? nurseryOwnersPhone,
    String? nurseryOwnersSurname,
  }) {
    return AddNursery(
      monthlyFeeForNursery: monthlyFeeForNursery ?? this.monthlyFeeForNursery,
      nurseryAddress: nurseryAddress ?? this.nurseryAddress,
      nurseryDistrict: nurseryDistrict ?? this.nurseryDistrict,
      nurseryLocationProvince:
          nurseryLocationProvince ?? this.nurseryLocationProvince,
      nurseryName: nurseryName ?? this.nurseryName,
      nurseryOwnersName: nurseryOwnersName ?? this.nurseryOwnersName,
      nurseryOwnersPhone: nurseryOwnersPhone ?? this.nurseryOwnersPhone,
      nurseryOwnersSurname: nurseryOwnersSurname ?? this.nurseryOwnersSurname,
    );
  }
}
