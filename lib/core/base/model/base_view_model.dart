import 'package:flutter/material.dart';

mixin BaseViewModel {
  Function? loadingFunction;
  late BuildContext baseContext;
  BuildContext setContext(BuildContext context);
  void init();
  void disp() {}
}
