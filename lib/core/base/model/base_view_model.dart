import 'package:flutter/material.dart';

abstract mixin class BaseViewModel {
  late BuildContext viewModelContext;
  void setContext(BuildContext context);
  void init();
  void disp() {}
}
