import 'dart:async';
import 'package:flutter/material.dart';
import 'package:kvebis_app/feature/authenticate/login/viewmodel/login_viewmodel.dart';
import 'package:kvebis_app/feature/splash/splash_view.dart';
import 'package:kvebis_app/main.dart';
import 'package:kvebis_app/product/navigator/app_router.dart';

abstract class SplashViewModel extends State<SplashView>
    with TickerProviderStateMixin {
  LoginViewModel loginViewModel = LoginViewModel();
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    Future.delayed(const Duration(seconds: 2), () {
      unawaited(getIt<AppRouter>().replace(const AddNurseryRoute()));
      getIt<AppRouter>().popUntilRoot();
    });
  }
}
