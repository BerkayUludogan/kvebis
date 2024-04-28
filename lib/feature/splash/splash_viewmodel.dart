import 'dart:async';
import 'package:flutter/material.dart';
import 'package:kvebis_app/feature/splash/splash_view.dart';
import 'package:kvebis_app/main.dart';
import 'package:kvebis_app/product/navigator/app_router.dart';

abstract class SplashViewModel extends State<SplashView>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    unawaited(getIt<AppRouter>().replace(const LoginRoute()));
    getIt<AppRouter>().popUntilRoot();
  }
}
