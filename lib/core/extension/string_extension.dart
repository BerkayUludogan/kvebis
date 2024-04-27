import 'package:kvebis_app/core/constants/app/application_constants.dart';
import 'package:kvebis_app/core/constants/app/string_constant.dart';

extension StringLocalization on String {
  String? get isValidEmail => contains(RegExp(ApplicationConstants.emailRegiex))
      ? null
      : StringConstants.emailDoesntValid;
  bool get isValidEmails =>
      RegExp(ApplicationConstants.emailRegiex).hasMatch(this);
}
