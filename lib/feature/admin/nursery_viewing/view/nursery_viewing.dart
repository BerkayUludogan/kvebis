import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:kvebis_app/core/constants/app/string_constant.dart';
import 'package:kvebis_app/core/extension/context_extension.dart';

@RoutePage()
class NurseryViewing extends StatelessWidget {
  const NurseryViewing({
    required this.nurseryName,
    required this.nurseryOwnersName,
    required this.nurseryOwnersSurname,
    required this.nurseryOwnersPhone,
    required this.nurseryDistrict,
    required this.nurseryLocationProvince,
    required this.nurseryAddress,
    required this.monthlyFeeForNursery,
    required this.adminID,
    super.key,
  });
  final String nurseryName;
  final String nurseryOwnersName;
  final String nurseryOwnersSurname;
  final String nurseryOwnersPhone;
  final String nurseryDistrict;
  final String nurseryLocationProvince;
  final String nurseryAddress;
  final String monthlyFeeForNursery;
  final String adminID;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringConstants.nurseryDetails),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: context.paddingMedium,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: nurseryHeaderText(
                  '$nurseryName Kreşi',
                  fontSize: 24,
                ),
              ),
              context.verticalMidSpace,
              nurseryHeaderText(StringConstants.ownerOfTheNursery),
              nurseryText(nurseryOwnersName, nurseryOwnersSurname),
              context.verticalMidSpace,
              nurseryHeaderText(StringConstants.nurseryOwnersPhone),
              nurseryText(nurseryOwnersPhone),
              context.verticalMidSpace,
              nurseryHeaderText(StringConstants.nurseryLocationProvince),
              nurseryText(nurseryLocationProvince),
              context.verticalMidSpace,
              nurseryHeaderText(StringConstants.nurseryDistrict),
              nurseryText(nurseryDistrict),
              context.verticalMidSpace,
              nurseryHeaderText(StringConstants.monthlyFeeForNursery),
              nurseryText('$monthlyFeeForNursery TL'),
              context.verticalMidSpace,
              nurseryHeaderText(StringConstants.nurseryAddress),
              nurseryText(nurseryAddress),
            ],
          ),
        ),
      ),
    );
  }

  Text nurseryText(String text, [String? text2 = '']) {
    return Text(
      '$text $text2',
      style: const TextStyle(fontSize: 18),
    );
  }

  Text nurseryHeaderText(String text, {double? fontSize = 18}) {
    return Text(
      text,
      style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
    );
  }
}
