import 'package:flutter/material.dart';
import 'package:kvebis_app/core/base/model/base_view_model.dart';
import 'package:kvebis_app/feature/admin/add_nursery/model/add_nursery.dart';
import 'package:kvebis_app/feature/admin/nursery_operations/viewmodel/operations_viewmodel.dart';
import 'package:kvebis_app/product/firebase/firebase_collections.dart';
import 'package:mobx/mobx.dart';

part 'add_nursery_viewmodel.g.dart';

class AddNurseryViewModel = _AddNurseryViewModelBase with _$AddNurseryViewModel;

abstract class _AddNurseryViewModelBase with BaseViewModel, Store {
  GlobalKey<FormState> formState = GlobalKey();
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  TextEditingController adminIDController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController ownerNameController = TextEditingController();
  TextEditingController ownerSurnameController = TextEditingController();
  TextEditingController ownerPhoneController = TextEditingController();
  TextEditingController nurseryNameController = TextEditingController();
  TextEditingController locationProvinceController = TextEditingController();
  TextEditingController nurseryDistrictController = TextEditingController();
  TextEditingController monthlyFeeForNurseryController =
      TextEditingController();
  TextEditingController nurseryAddressController = TextEditingController();
  OperationsViewModel operationsViewModel = OperationsViewModel();

  void dispose() {
    nurseryNameController.dispose();
    ownerNameController.dispose();
    ownerSurnameController.dispose();
    ownerPhoneController.dispose();
    locationProvinceController.dispose();
    nurseryDistrictController.dispose();
    monthlyFeeForNurseryController.dispose();
    nurseryAddressController.dispose();
    emailController.dispose();
    passwordController.dispose();
    adminIDController.dispose();
  }

  @override
  void init() {}

  @override
  void setContext(BuildContext context) => viewModelContext = context;

  Future<void> save() async {
    await FirebaseCollectionsEnum.addNursery.reference.add(
      AddNursery(
        nurseryName: nurseryNameController.text,
        nurseryOwnersName: ownerNameController.text,
        nurseryOwnersSurname: ownerSurnameController.text,
        nurseryOwnersPhone: ownerPhoneController.text,
        nurseryDistrict: nurseryDistrictController.text,
        nurseryLocationProvince: locationProvinceController.text,
        nurseryAddress: nurseryAddressController.text,
        monthlyFeeForNursery: monthlyFeeForNurseryController.text,
        adminID: adminIDController.text,
      ).toJson(),
    );
  }
}
