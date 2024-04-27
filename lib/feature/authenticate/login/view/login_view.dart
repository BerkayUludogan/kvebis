import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kvebis_app/core/base/view/base_widget.dart';
import 'package:kvebis_app/core/constants/image/image_path.dart';
import 'package:kvebis_app/core/constants/app/string_constant.dart';
import 'package:kvebis_app/core/extension/context_extension.dart';
import 'package:kvebis_app/core/widgets/button/base_button.dart';
import 'package:kvebis_app/core/widgets/inputs/email_input.dart';
import 'package:kvebis_app/core/widgets/inputs/password_input.dart';
import 'package:kvebis_app/feature/authenticate/login/viewmodel/login_view_model.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final loginViewModel = LoginViewModel();
  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      viewModel: loginViewModel,
      onModelReady: (model) {
        model
          ..setContext(context)
          ..init();
      },
      onPageBuilder: (BuildContext context, LoginViewModel value) => Scaffold(
        key: value.scaffoldState,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: SizedBox(
                height: context.height,
                child: Column(
                  children: [
                    buildAnimatedContainer(context),
                    Expanded(
                      child: Padding(
                        padding: context.paddingNormal,
                        child: buildForm(value, context),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildAnimatedContainer(BuildContext context) {
    return AnimatedContainer(
      duration: context.lowDuration,
      height:
          context.mediaQuery.viewInsets.bottom > 0 ? 0 : context.height * .4,
      child: ImagePaths.login.toWidget(),
    );
  }

  Widget buildForm(LoginViewModel value, BuildContext context) {
    return Form(
      key: value.formState,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        children: [
          EmailInput(
            controller: loginViewModel.emailController,
            text: StringConstants.email,
          ),
          SizedBox(
            height: context.normalValue,
          ),
          buildTextFormFieldPassword(context),
          buildForgot(),
          SizedBox(
            height: context.mediumValue,
          ),
          const BaseButton(
            name: StringConstants.login,
          ),
        ],
      ),
    );
  }

  Widget buildTextFormFieldPassword(BuildContext context) {
    return Observer(
      builder: (_) {
        return PasswordInput(
          controller: loginViewModel.passwordController,
          text: StringConstants.password,
          onPressed: loginViewModel.isVisibleStateChange,
          isVisible: loginViewModel.isVisible,
        );
      },
    );
  }

  Row buildForgot() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {},
          child: const Text(
            StringConstants.iForgotMyPassword,
          ),
        ),
      ],
    );
  }
}
