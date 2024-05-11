import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kvebis_app/core/base/model/base_view_model.dart';
import 'package:kvebis_app/feature/authenticate/login/model/login_model.dart';
import 'package:kvebis_app/feature/authenticate/login/model/role.dart';
import 'package:kvebis_app/feature/authenticate/login/service/login_service_interface.dart';
import 'package:kvebis_app/feature/authenticate/login/viewmodel/login.dart';
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
  BuildContext setContext(BuildContext context) => baseContext = context;

  @override
  void init() {}

  @observable
  bool isLoading = false;
  @observable
  bool isVisible = true;

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

<<<<<<< HEAD:lib/feature/authenticate/login/viewmodel/login_view_model.dart
  Future<void> login() async {
    final auth = FirebaseAuth.instance;
    try {
      await auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
    } on FirebaseAuthException catch (e) {
      debugPrint('Auth exception $e');
    }

  unawaited(getIt<AppRouter>().replace(const AdminMainRoute()));
    getIt<AppRouter>().popUntilRoot();
  }

=======
>>>>>>> b569e63770bb2888e32497016bcff84386b4c949:lib/feature/authenticate/login/viewmodel/login_viewmodel.dart
  Future<void> loginFirestore() async {
    final users = await FirebaseCollectionsEnum.users.get(Login());

<<<<<<< HEAD:lib/feature/authenticate/login/viewmodel/login_view_model.dart
    final documents = querySnapshot.docs;
    for (final document in documents) {
      final data = document.data() as Map<String, dynamic>?;
      if (data != null) {
        if (emailController.text == data['mail'] &&
            passwordController.text == data['password'] &&
            data['roleID'] == 'bJTMkX2vJyMqtYeB5RJb') {
           unawaited(getIt<AppRouter>().replace(const AdminMainRoute()));
=======
    final allDocumentIds =
        await CustomCollectionReference<Role>(collectionPath: 'roles')
            .getAllDocumentIds();

    for (final user in users) {
      if (emailController.text == user.email &&
          passwordController.text == user.password) {
        if (allDocumentIds[0] == user.roleID) {
          unawaited(getIt<AppRouter>().replace(const AdminMainRoute()));
>>>>>>> b569e63770bb2888e32497016bcff84386b4c949:lib/feature/authenticate/login/viewmodel/login_viewmodel.dart
          getIt<AppRouter>().popUntilRoot();
        } else if (allDocumentIds[1] == user.roleID) {
          unawaited(getIt<AppRouter>().replace(const TeacherMainRoute()));
          getIt<AppRouter>().popUntilRoot();
        } /* else if (allDocumentIds[2] == user.roleID) {
          unawaited(getIt<AppRouter>().replace(const  Route()));
          getIt<AppRouter>().popUntilRoot();
        }  */
      }
    }
  }
}
