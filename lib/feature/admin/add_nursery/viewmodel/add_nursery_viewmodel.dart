import 'package:flutter/material.dart';
import 'package:kvebis_app/core/base/model/base_view_model.dart';
import 'package:mobx/mobx.dart';

part 'add_nursery_viewmodel.g.dart';

class AddNurseryViewModel = _AddNurseryViewModelBase with _$AddNurseryViewModel;

abstract class _AddNurseryViewModelBase with BaseViewModel, Store {
  GlobalKey<FormState> formState = GlobalKey();

  @override
  void init() {}

  @override
  void setContext(BuildContext context) => viewModelContext = context;

  @observable
  bool isLoading = false;

  @observable
  bool isVisible = true;

  @action
  void isLoadingChange() => isLoading = !isLoading;

  @action
  void isVisibleStateChange() => isVisible = !isVisible;
}
