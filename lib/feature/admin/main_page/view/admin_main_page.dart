import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kvebis_app/core/constants/app/color_constants.dart';
import 'package:kvebis_app/core/constants/app/string_constant.dart';
import 'package:kvebis_app/core/constants/image/image_path.dart';
import 'package:kvebis_app/core/extension/context_extension.dart';
import 'package:kvebis_app/core/widgets/container/appbar.dart';
import 'package:kvebis_app/feature/admin/core/widgets/card_button.dart';
import 'package:kvebis_app/main.dart';
import 'package:kvebis_app/product/navigator/app_router.dart';

@RoutePage()
class AdminMainView extends StatelessWidget {
  const AdminMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.buttonColor,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
        ),
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
          context.verticalLowSpace,
          CustomCardButton(
            onTap: () {
              getIt<AppRouter>().push(OperationsRoute());
            },
            text: StringConstants.nurseryOperations,
          ),
          context.verticalLowSpace,
          /* CustomCardButton(
            onTap: () {},
            text: StringConstants.nurseryViewing,
          ), */
          context.verticalLowSpace,
          CustomCardButton(
            onTap: () {
              getIt<AppRouter>().push(AddNurseryRoute());
            },
            text: StringConstants.nurseryAddtion,
          ),
          context.verticalLowSpace,
          /* CustomCardButton(
            onTap: () {},
            text: StringConstants.nurseryEditing,
          ), */
        ],
      ),
    );
  }
}
