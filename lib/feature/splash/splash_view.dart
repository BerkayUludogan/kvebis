import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kvebis_app/feature/splash/splash_viewmodel.dart';

@RoutePage()
class SplashView extends StatefulWidget {
  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends SplashViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _loadingView());
  }

  Widget _loadingView() {
    return Center(
      child: SizedBox(
        height: 24,
        width: 24,
        child: CircularProgressIndicator.adaptive(
          strokeWidth: 2.5,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.grey.shade500),
          backgroundColor: Colors.grey.shade300,
        ),
      ),
    );
  }
}
