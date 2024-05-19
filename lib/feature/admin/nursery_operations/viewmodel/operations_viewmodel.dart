import 'package:flutter/material.dart';
import 'package:kvebis_app/core/base/model/base_view_model.dart';
import 'package:kvebis_app/feature/admin/add_nursery/model/add_nursery.dart';
import 'package:kvebis_app/product/firebase/firebase_collections.dart';
import 'package:mobx/mobx.dart';

part 'operations_viewmodel.g.dart';

class OperationsViewModel = _OperationsViewModelBase with _$OperationsViewModel;

abstract class _OperationsViewModelBase with BaseViewModel, Store {
  GlobalKey<FormState> formState = GlobalKey();
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  @observable
  ObservableList<AddNursery> nursery = ObservableList<AddNursery>();

  void dispose() {}

  @override
  Future<void> init() async {
    await fetchNurserys();
  }

  @override
  void setContext(BuildContext context) => viewModelContext = context;

  @observable
  bool isLoading = false;

  @action
  void isLoadingChange() => isLoading = !isLoading;

  @action
  Future<List<AddNursery>> fetchNurserys() async {
    final fetchedNursery =
        await FirebaseCollectionsEnum.addNursery.get(AddNursery());
    nursery
      ..clear()
      ..addAll(fetchedNursery);

    return nursery;
  }
}
