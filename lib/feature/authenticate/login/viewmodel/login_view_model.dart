import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kvebis_app/core/base/model/base_view_model.dart';
import 'package:kvebis_app/feature/authenticate/login/model/login_model.dart';
import 'package:kvebis_app/feature/authenticate/login/service/login_service_interface.dart';
import 'package:kvebis_app/main.dart';
import 'package:kvebis_app/product/navigator/app_router.dart';
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

  Future<void> login() async {
    final auth = FirebaseAuth.instance;
    try {
      await auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
    } on FirebaseAuthException catch (e) {
      debugPrint('Auth exception ${e.toString()}');
    }

    unawaited(getIt<AppRouter>().replace(const AdminMainRoute()));
    getIt<AppRouter>().popUntilRoot();
  }

  Future<void> loginFirestore() async {
    final QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('users').get();

    final documents = querySnapshot.docs;
    for (final document in documents) {
      final data = document.data() as Map<String, dynamic>?;
      if (data != null) {
        if (emailController.text == data['mail'] &&
            passwordController.text == data['password'] &&
            data['roleID'] == 'bJTMkX2vJyMqtYeB5RJb') {
          unawaited(getIt<AppRouter>().replace(const AdminMainRoute()));
          getIt<AppRouter>().popUntilRoot();
        }
      }
    }
  }
}
