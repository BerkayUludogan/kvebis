import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kvebis_app/core/constants/app/string_constant.dart';
import 'package:kvebis_app/core/constants/image/image_path.dart';
import 'package:kvebis_app/core/extension/context_extension.dart';
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
    return Scaffold(
      body: _loadingView(),
      resizeToAvoidBottomInset: false,
    );
  }

  Widget _loadingView() {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: context.splashHigh.top,
          ),
          Center(
            child: splashText(StringConstants.appNameShort),
          ),
          splashText(StringConstants.appName),
          const Spacer(),
          CircularProgressIndicator.adaptive(
            strokeWidth: 2.5,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.grey.shade500),
            backgroundColor: Colors.grey.shade300,
          ),
          const Spacer(),
          ImagePaths.splash.toWidget(),
        ],
      ),
    );
  }

  Text splashText(String text) {
    return Text(
      text,
      style: GoogleFonts.getFont('Poppins')
          .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
    );
  }
}
