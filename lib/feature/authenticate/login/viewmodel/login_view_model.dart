import 'package:flutter/material.dart';
import 'package:kvebis_app/core/base/model/base_view_model.dart';
import 'package:kvebis_app/feature/authenticate/login/model/login_model.dart';
import 'package:kvebis_app/feature/authenticate/login/service/login_service_interface.dart';
import 'package:mobx/mobx.dart';

part 'login_view_model.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store, BaseViewModel {
  GlobalKey<FormState> formState = GlobalKey();
  late ILoginService loginService;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();

  @override
  BuildContext setContext(BuildContext context) => baseContext = context;

  @override
  void init() {}

  @observable
  bool isLoading = false;
  @observable
  bool isLockOpen = false;

  @action
  void isLoadingChange() => isLoading = !isLoading;

  @action
  void isLockStateChange() => isLockOpen = !isLockOpen;

  @action
  Future<void> fetchLoginService() async {
    isLoadingChange();
    if (formState.currentState!.validate()) {
      final response = await loginService.fetchUserControl(LoginModel(
          email: emailController.text, password: passwordController.text));

      if (response != null) {
        if (response.token?.isEmpty ?? false) return;
        if (scaffoldState.currentContext != null) {
          ScaffoldMessenger.of(scaffoldState.currentContext!)
              .showSnackBar(SnackBar(content: Text(response.token!)));
        }
        /*await localeManager.setStringValue(
            PreferencesKeys.TOKEN, response.token!);*/
      }
    }
    isLoadingChange();
  }
}
