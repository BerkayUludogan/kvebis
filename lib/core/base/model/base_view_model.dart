import 'package:flutter/material.dart';

abstract mixin class BaseViewModel {
  late BuildContext viewModelContext;
  // Function? loadingFunction;
  void setContext(BuildContext context);
  void init();
  // void disp() {}
}
