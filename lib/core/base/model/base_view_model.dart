import 'package:flutter/material.dart';

import '../../init/cache/locale_manager.dart';

mixin BaseViewModel {
  late BuildContext viewModelContext;
  void setContext(BuildContext context);

  LocaleManager localeManager = LocaleManager.instance;

  void init();
}
