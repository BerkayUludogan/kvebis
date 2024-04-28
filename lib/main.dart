import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:kvebis_app/product/navigator/app_router.dart';
part 'core/init/main/main_init.dart';

void main() {
  getIt.registerSingleton<AppRouter>(AppRouter());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final router = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router.config(),
      debugShowCheckedModeBanner: false,
    );
  }
}
