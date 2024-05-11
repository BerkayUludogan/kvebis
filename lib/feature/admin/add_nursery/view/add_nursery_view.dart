import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:kvebis_app/core/constants/app/color_constants.dart';
import 'package:kvebis_app/core/constants/app/string_constant.dart';
import 'package:kvebis_app/core/widgets/button/base_button.dart';

@RoutePage()
class AddNurseryView extends StatelessWidget {
  const AddNurseryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.buttonColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Kreş Ekleme Paneli',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            // buildForm(),

            BaseButton(
              name: StringConstants.save,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  //Form buildForm() => Form(child: );
}
