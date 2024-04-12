import 'package:flutter/material.dart';
import 'package:kvebis_app/feature/authenticate/login/view/login_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginView(),
      ),
    );
  }
}
