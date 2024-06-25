import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kvebis_app/core/base/model/base_view_model.dart';
import 'package:kvebis_app/core/constants/app/string_constant.dart';
import 'package:kvebis_app/feature/admin/add_nursery/model/add_nursery.dart';
import 'package:kvebis_app/feature/admin/nursery_operations/viewmodel/operations_viewmodel.dart';
import 'package:kvebis_app/feature/authenticate/login/firebase/role.dart';
import 'package:kvebis_app/main.dart';
import 'package:kvebis_app/product/firebase/firebase_collections.dart';
import 'package:kvebis_app/product/navigator/app_router.dart';
import 'package:kvebis_app/product/utility/collection_refence.dart';
import 'package:mobx/mobx.dart';

part 'add_nursery_viewmodel.g.dart';

class AddNurseryViewModel = _AddNurseryViewModelBase with _$AddNurseryViewModel;

abstract class _AddNurseryViewModelBase with BaseViewModel, Store {
  String appbarName = StringConstants.nurseryAdditionPanel;
  Future<void> Function()? onPressed;
  Nursery? addNursery = Nursery();
  GlobalKey<FormState> formState = GlobalKey();
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  TextEditingController adminIDController = TextEditingController();
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
    adminIDController.dispose();
  }

  @override
  void init() {
    if (addNursery != null) {
      appbarName = StringConstants.nurseryArrangementPanel;
      nurseryNameController.text = addNursery!.nurseryName!;
      adminIDController.text = addNursery!.adminID!;
      ownerNameController.text = addNursery!.nurseryOwnersName!;
      ownerSurnameController.text = addNursery!.nurseryOwnersSurname!;
      ownerPhoneController.text = addNursery!.nurseryOwnersPhone!;
      locationProvinceController.text = addNursery!.nurseryLocationProvince!;
      nurseryDistrictController.text = addNursery!.nurseryDistrict!;
      monthlyFeeForNurseryController.text = addNursery!.monthlyFeeForNursery!;
      nurseryAddressController.text = addNursery!.nurseryAddress!;
      onPressed = () async {
        await update();
        await getIt<AppRouter>().push(const AdminMainRoute());
      };
    } else {
      onPressed = () async {
        await save();
        await getIt<AppRouter>().push(const AdminMainRoute());
      };
    }
  }

  @override
  void setContext(BuildContext context) => viewModelContext = context;

  Future<void> save() async {
    if (adminIDController.text == '' ||
        ownerNameController.text == '' ||
        ownerSurnameController.text == '' ||
        ownerPhoneController.text == '' ||
        nurseryNameController.text == '' ||
        locationProvinceController.text == '' ||
        nurseryDistrictController.text == '' ||
        monthlyFeeForNurseryController.text == '' ||
        nurseryAddressController.text == '') return;
    await FirebaseCollectionsEnum.addNursery.reference.add(
      Nursery(
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

  Future<void> update() async {
    if (adminIDController.text == '' ||
        ownerNameController.text == '' ||
        ownerSurnameController.text == '' ||
        ownerPhoneController.text == '' ||
        nurseryNameController.text == '' ||
        locationProvinceController.text == '' ||
        nurseryDistrictController.text == '' ||
        monthlyFeeForNurseryController.text == '' ||
        nurseryAddressController.text == '') return;
    await FirebaseCollectionsEnum.addNursery.reference.doc(addNursery!.id).set(
          Nursery(
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
