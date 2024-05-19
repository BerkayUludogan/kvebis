import 'package:kvebis_app/core/constants/app/application_constants.dart';
import 'package:kvebis_app/core/constants/app/string_constant.dart';

extension StringLocalization on String {
  String? get isValidEmail => contains(RegExp(ApplicationConstants.emailRegiex))
      ? null
      : StringConstants.emailDoesntValid;

  String? get isValidString =>
      contains(RegExp(ApplicationConstants.stringRegiex))
          ? null
          : StringConstants.checkTheEnteredText;

  String? get isValidPhone => contains(RegExp(ApplicationConstants.phoneRegiex))
      ? null
      : StringConstants.checkYourPhoneNumber;

  String? get isValidNumber =>
      contains(RegExp(ApplicationConstants.numberRegiex))
          ? null
          : StringConstants.checkTheEnteredText;

  bool get isValidEmails =>
      RegExp(ApplicationConstants.emailRegiex).hasMatch(this);
  bool get isValidStrings =>
      RegExp(ApplicationConstants.stringWithoutRegiex).hasMatch(this);
  bool get isValidStringWithoutRegiex =>
      RegExp(ApplicationConstants.stringWithoutRegiex).hasMatch(this);
  bool get isValidPhones =>
      RegExp(ApplicationConstants.phoneRegiex).hasMatch(this);
  bool get isValidNumbers =>
      RegExp(ApplicationConstants.numberRegiex).hasMatch(this);
}
