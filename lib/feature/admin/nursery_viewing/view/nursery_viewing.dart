import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:kvebis_app/core/constants/app/string_constant.dart';
import 'package:kvebis_app/core/extension/context_extension.dart';
import 'package:kvebis_app/core/widgets/button/base_button.dart';
import 'package:kvebis_app/feature/admin/add_nursery/model/add_nursery.dart';
import 'package:kvebis_app/main.dart';
import 'package:kvebis_app/product/navigator/app_router.dart';

@RoutePage()
class NurseryViewing extends StatefulWidget {
  const NurseryViewing({
    required this.nursery,
    super.key,
  });
  final Nursery nursery;

  @override
  State<NurseryViewing> createState() => _NurseryViewingState();
}

class _NurseryViewingState extends State<NurseryViewing> {
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
                  '${widget.nursery.nurseryName} Kreşi',
                  fontSize: 24,
                ),
              ),
              context.verticalMidSpace,
              nurseryHeaderText(StringConstants.ownerOfTheNursery),
              nurseryText(
                widget.nursery.nurseryOwnersName!,
                widget.nursery.nurseryOwnersSurname,
              ),
              context.verticalMidSpace,
              nurseryHeaderText(StringConstants.nurseryOwnersPhone),
              nurseryText(widget.nursery.nurseryOwnersPhone!),
              context.verticalMidSpace,
              nurseryHeaderText(StringConstants.nurseryLocationProvince),
              nurseryText(widget.nursery.nurseryLocationProvince!),
              context.verticalMidSpace,
              nurseryHeaderText(StringConstants.nurseryDistrict),
              nurseryText(widget.nursery.nurseryDistrict!),
              context.verticalMidSpace,
              nurseryHeaderText(StringConstants.monthlyFeeForNursery),
              nurseryText('${widget.nursery.monthlyFeeForNursery} TL'),
              context.verticalMidSpace,
              nurseryHeaderText(StringConstants.nurseryAddress),
              nurseryText(widget.nursery.nurseryAddress!),
              context.verticalMidSpace,
              BaseButton(
                name: StringConstants.nurseryEditing,
                onPressed: () {
                  getIt<AppRouter>()
                      .push(AddNurseryRoute(addNursery: widget.nursery));
                },
              ),
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
