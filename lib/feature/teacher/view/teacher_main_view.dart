import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kvebis_app/core/constants/app/color_constants.dart';
import 'package:kvebis_app/core/constants/app/string_constant.dart';
import 'package:kvebis_app/core/constants/image/image_path.dart';
import 'package:kvebis_app/core/widgets/container/appbar.dart';
import 'package:kvebis_app/core/widgets/sizedBox.dart';
import 'package:kvebis_app/feature/admin/core/widgets/card_button.dart';

@RoutePage()
class TeacherMainView extends StatelessWidget {
  const TeacherMainView({super.key});

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
              const ContainerAppBar(text: 'Teacherrr'),
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
          CustomCardButton(
            onTap: () {},
            text: StringConstants.nurseryOperations,
          ),
          const SizedBox10(),
          CustomCardButton(
            onTap: () {},
            text: StringConstants.nurseryViewing,
          ),
          const SizedBox10(),
          CustomCardButton(
            onTap: () {},
            text: StringConstants.nurseryAddtion,
          ),
          const SizedBox10(),
          CustomCardButton(
            onTap: () {},
            text: StringConstants.nurseryEditing,
          ),
        ],
      ),
    );
  }
}
