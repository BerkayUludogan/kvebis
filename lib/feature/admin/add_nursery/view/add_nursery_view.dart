import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:kvebis_app/core/base/view/base_widget.dart';
import 'package:kvebis_app/core/constants/app/color_constants.dart';
import 'package:kvebis_app/core/constants/app/string_constant.dart';
import 'package:kvebis_app/core/extension/context_extension.dart';
import 'package:kvebis_app/core/extension/string_extension.dart';
import 'package:kvebis_app/core/widgets/button/base_button.dart';
import 'package:kvebis_app/core/widgets/inputs/custom_input.dart';
import 'package:kvebis_app/feature/admin/add_nursery/viewmodel/add_nursery_viewmodel.dart';

@RoutePage()
class AddNurseryView extends StatelessWidget {
  AddNurseryView({super.key});
  final addNurseryViewModel = AddNurseryViewModel();
  @override
  Widget build(BuildContext context) {
    return BaseView<AddNurseryViewModel>(
      viewModel: addNurseryViewModel,
      onModelReady: (model) {
        model
          ..setContext(context)
          ..init();
      },
      onPageBuilder: (context, AddNurseryViewModel viewModel) => Scaffold(
        key: viewModel.scaffoldState,
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
            StringConstants.nurseryAdditionPanel,
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: context.paddingNormal,
                    child: buildForm(viewModel, context),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildForm(AddNurseryViewModel viewModel, BuildContext context) {
    return Form(
      key: viewModel.formState,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          nursaryNameInput(viewModel),
          context.verticalLowSpace,
          nursaryOwnerNameInput(viewModel),
          context.verticalLowSpace,
          nursaryOwnerSurnameInput(viewModel),
          context.verticalLowSpace,
          nursaryOwnerPhone(viewModel),
          context.verticalLowSpace,
          nurseryDistrict(viewModel),
          context.verticalLowSpace,
          nurseryLocationProvince(viewModel),
          context.verticalLowSpace,
          nurseryAddress(viewModel),
          context.verticalLowSpace,
          monthlyFeeForNursery(viewModel),
          context.verticalLowSpace,
          adminID(viewModel),
          context.verticalLowSpace,
          saveButton(viewModel),
          context.verticalLowSpace,
        ],
      ),
    );
  }

  BaseButton saveButton(AddNurseryViewModel viewModel) {
    return BaseButton(
      name: StringConstants.save,
      onPressed: () async {
        await viewModel.save();
      },
    );
  }

  CustomInput adminID(AddNurseryViewModel viewModel) {
    return CustomInput(
      icon: const Icon(Icons.manage_accounts_rounded),
      maxLength: 20,
      text: StringConstants.adminID,
      controller: viewModel.adminIDController,
      validator: (value) =>
          value!.isValidStrings ? null : StringConstants.checkTheEnteredText,
    );
  }

  CustomInput monthlyFeeForNursery(AddNurseryViewModel viewModel) {
    return CustomInput(
      icon: const Icon(Icons.attach_money_outlined),
      maxLength: 6,
      text: StringConstants.monthlyFeeForNursery,
      controller: viewModel.monthlyFeeForNurseryController,
      validator: (value) =>
          value!.isValidNumbers ? null : StringConstants.checkTheEnteredText,
    );
  }

  CustomInput nurseryAddress(AddNurseryViewModel viewModel) {
    return CustomInput(
      icon: const Icon(Icons.location_pin),
      maxLength: 100,
      text: StringConstants.nurseryAddress,
      controller: viewModel.nurseryAddressController,
      validator: (value) =>
          value!.isValidStrings ? null : StringConstants.checkTheEnteredText,
    );
  }

  CustomInput nurseryLocationProvince(AddNurseryViewModel viewModel) {
    return CustomInput(
      icon: const Icon(Icons.location_pin),
      maxLength: 14,
      text: StringConstants.nurseryLocationProvince,
      controller: viewModel.locationProvinceController,
      validator: (value) =>
          value!.isValidStrings ? null : StringConstants.checkTheEnteredText,
    );
  }

  CustomInput nurseryDistrict(AddNurseryViewModel viewModel) {
    return CustomInput(
      icon: const Icon(Icons.location_pin),
      maxLength: 16,
      text: StringConstants.nurseryDistrict,
      controller: viewModel.nurseryDistrictController,
      validator: (value) =>
          value!.isValidStrings ? null : StringConstants.checkTheEnteredText,
    );
  }

  CustomInput nursaryOwnerPhone(AddNurseryViewModel viewModel) {
    return CustomInput(
      icon: const Icon(Icons.phone_android),
      maxLength: 11,
      text: StringConstants.nurseryOwnersPhone,
      controller: viewModel.ownerPhoneController,
      keyboardType: TextInputType.phone,
      validator: (value) =>
          value!.isValidPhones ? null : StringConstants.checkYourPhoneNumber,
    );
  }

  CustomInput nursaryOwnerSurnameInput(AddNurseryViewModel viewModel) {
    return CustomInput(
      icon: const Icon(Icons.arrow_right),
      maxLength: 30,
      text: StringConstants.nurseryOwnersSurname,
      controller: viewModel.ownerSurnameController,
      validator: (value) =>
          value!.isValidStrings ? null : StringConstants.checkTheEnteredText,
    );
  }

  CustomInput nursaryOwnerNameInput(AddNurseryViewModel viewModel) {
    return CustomInput(
      icon: const Icon(Icons.arrow_right),
      maxLength: 30,
      text: StringConstants.nurseryOwnersName,
      controller: viewModel.ownerNameController,
      validator: (value) => value!.isValidStringWithoutRegiex
          ? null
          : StringConstants.checkTheEnteredText,
    );
  }

  CustomInput nursaryNameInput(AddNurseryViewModel viewModel) {
    return CustomInput(
      icon: const Icon(Icons.arrow_right),
      maxLength: 30,
      text: StringConstants.nurseryName,
      controller: viewModel.nurseryNameController,
      keyboardType: TextInputType.name,
      validator: (value) => value!.isValidStringWithoutRegiex
          ? null
          : StringConstants.checkTheEnteredText,
    );
  }
}
