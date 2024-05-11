import 'package:flutter/material.dart';
import 'package:kvebis_app/core/constants/app/color_constants.dart';
import 'package:kvebis_app/core/constants/app/string_constant.dart';
import 'package:kvebis_app/core/constants/image/image_path.dart';
import 'package:kvebis_app/core/extension/context_extension.dart';
import 'package:kvebis_app/core/widgets/container/appbar.dart';
import 'package:kvebis_app/core/widgets/sizedBox.dart';
import 'package:kvebis_app/feature/admin/core/widgets/card_button.dart';

class NurseryAdminView extends StatelessWidget {
  const NurseryAdminView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.buttonColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              const ContainerAppBar(text: StringConstants.admin),
              Positioned(
                left: 150,
                child: ClipOval(
                  child: CircleAvatar(
                    backgroundColor: ColorConstants.buttonColor,
                    radius: 60,
                    child: ImagePaths.login.toWidget(),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox10(),
          AdminCardButton(
            onTap: () {},
            text: StringConstants.operationsStaff,
          ),
          const SizedBox10(),
          AdminCardButton(
            onTap: () {},
            text: StringConstants.operationsStudent,
          ),
          const SizedBox10(),
          AdminCardButton(
            onTap: () {},
            text: StringConstants.operationsAnnouncement,
          ),
          const SizedBox10(),
          AdminCardButton(
            onTap: () {},
            text: StringConstants.operationsParent,
          ),
     
     
        ],
      ),
    );
  }
}
