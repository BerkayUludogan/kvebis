import 'dart:async';
import 'package:flutter/material.dart';
import 'package:kvebis_app/core/base/model/base_view_model.dart';
import 'package:kvebis_app/feature/admin/add_nursery/model/add_nursery.dart';
import 'package:kvebis_app/feature/authenticate/login/firebase/login.dart';
import 'package:kvebis_app/feature/authenticate/login/firebase/role.dart';
import 'package:kvebis_app/feature/authenticate/login/model/login_model.dart';
import 'package:kvebis_app/feature/authenticate/login/service/login_service_interface.dart';
import 'package:kvebis_app/main.dart';
import 'package:kvebis_app/product/firebase/firebase_collections.dart';
import 'package:kvebis_app/product/navigator/app_router.dart';
import 'package:kvebis_app/product/utility/collection_refence.dart';
import 'package:mobx/mobx.dart';
part 'login_viewmodel.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store, BaseViewModel {
  GlobalKey<FormState> formState = GlobalKey();
  late ILoginService loginService;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();

  @override
  void setContext(BuildContext context) => viewModelContext = context;

  @override
  void init() {
    emailController.text = 'buludogan0@gmail.com';
    passwordController.text = '123456';
  }

  @observable
  bool isLoading = false;

  @observable
  bool isVisible = true;

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
  }

  @action
  void isLoadingChange() => isLoading = !isLoading;

  @action
  void isVisibleStateChange() => isVisible = !isVisible;

  @action
  Future<void> fetchLoginService() async {
    isLoadingChange();
    if (formState.currentState!.validate()) {
      final response = await loginService.fetchUserControl(
        LoginModel(
          email: emailController.text,
          password: passwordController.text,
        ),
      );

      if (response != null) {
        if (response.token?.isEmpty ?? false) return;
        if (scaffoldState.currentContext != null) {
          ScaffoldMessenger.of(scaffoldState.currentContext!)
              .showSnackBar(SnackBar(content: Text(response.token!)));
        }
      }
    }
    isLoadingChange();
  }

  Future<void> loginFirestore() async {
    final adminUsers = await FirebaseCollectionsEnum.adminUsers.get(Login());

    final users = await FirebaseCollectionsEnum.users.get(Login());

    final allDocumentIds =
        await CustomCollectionReference<Role>(collectionPath: 'roles')
            .getAllDocumentIds();

    for (final user in [...adminUsers, ...users]) {
      if (emailController.text == user.email &&
          passwordController.text == user.password) {
        if (adminUsers.contains(user)) {
          unawaited(getIt<AppRouter>().push(const AdminMainRoute()));
        } else if (users.contains(user) && allDocumentIds[1] == user.roleID) {
          unawaited(getIt<AppRouter>().push(const TeacherMainRoute()));
        }
        return;
      }
    }
  }
}
