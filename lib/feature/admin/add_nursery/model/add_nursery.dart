import 'package:json_annotation/json_annotation.dart';
import 'package:kvebis_app/product/utility/exception/base/base_firebase_model.dart';
part 'add_nursery.g.dart';

@JsonSerializable()
class Nursery extends BaseFirebaseModel<Nursery> {
  Nursery({
    this.id,
    this.nurseryName,
    this.nurseryOwnersName,
    this.nurseryOwnersSurname,
    this.nurseryOwnersPhone,
    this.nurseryDistrict,
    this.nurseryLocationProvince,
    this.nurseryAddress,
    this.monthlyFeeForNursery,
    this.adminID,
  });
  String? id;
  String? nurseryName;
  String? nurseryOwnersName;
  String? nurseryOwnersSurname;
  String? nurseryOwnersPhone;
  String? nurseryDistrict;
  String? nurseryLocationProvince;
  String? nurseryAddress;
  String? monthlyFeeForNursery;
  String? adminID;

  @override
  Map<String, dynamic> toJson() => _$NurseryToJson(this);

  @override
  Nursery fromJson(Map<String, dynamic> json) => _$NurseryFromJson(json);
}
