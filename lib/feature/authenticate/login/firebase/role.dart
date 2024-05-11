import 'package:json_annotation/json_annotation.dart';
import 'package:kvebis_app/product/utility/exception/base/base_firebase_model.dart';
part 'role.g.dart';

@JsonSerializable()
class Role extends BaseFirebaseModel<Role> {
  Role({
    this.roleID,
    this.roleName,
  });

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
  int? roleID;
  String? roleName;

  @override
  Map<String, dynamic> toJson() => _$RoleToJson(this);

  Role copyWith({
    int? roleID,
    String? roleName,
  }) {
    return Role(
      roleID: roleID ?? this.roleID,
      roleName: roleName ?? this.roleName,
    );
  }

  @override
  Role fromJson(Map<String, dynamic> json) {
    return Role.fromJson(json);
  }
}
