import 'package:flutter/cupertino.dart';
import 'language_delegate.dart';

String? getTranslated(String key, BuildContext context) {
  return AppLocalizations.of(context)!.translate(key);
}

class LanguageKeys {
  static const String signUp = 'signUp';
  static const String welcome = 'welcomeFauree';
  static const String emailOrPhone = 'emailOrPhone';
  static const String forgotPassword = 'forgotPassword';
  static const String password = 'password';
  static const String rememberMe = 'rememberMe';
  static const String login = 'login';
  static const String newOnPlatform = 'newOnPlatform';
  static const String createAccount = 'createAnAccount';
  static const String companyName = 'companyName';
  static const String email = 'email';
  static const String phoneNo = 'phoneNo';
  static const String businessType = 'businessType';
  static const String policyTerms = 'policyTerms';
  static const String alreadyAccount = 'alreadyAccount';
  static const String signInInstead = 'signInInstead';
  static const String submit = 'submit';
  static const String enterEmailOrPhone = 'enterEmailOrPhone';
  static const String backLogin = 'backLogin';
  static const String passwordDifference = "passwordDifference";
  static const String resetPassword = "resetPassword";
  static const String newPassword = "newPassword";
  static const String confirmPassword = "confirmPassword";
  static const String passwordContains = "passwordContains";
  static const String setNewPassword = "setNewPassword";
  static const String verificationSend = "verificationSend";
  static const String emailPhone = "emailPhone";
  static const String digitCode = "digitCode";
  static const String verify = "verify";
  static const String didntGetCOde = "didntGetCOde";
  static const String resend = "resend";
  static const String dashboard = "dashboard";
  static const String portfolio = "portfolio";
  static const String performance = "performance";
  static const String purchaseOrders = "purchaseOrders";
  static const String invoices = "invoices";
  static const String earlyRequest = "earlyRequest";
  static const String supplyChain = "supplyChain";
  static const String administration = "administration";
  static const String reports = "reports";
  static const String settings = "settings";
  static const String usersManagement = "usersManagement";
  static const String roles = "roles";
  static const String rights = "rights";
  static const String users = "users";
  static const String permission = "permission";
  static const String currency = "currency";
  static const String manageSuppliers = "manageSuppliers";
  static const String supplierID = "supplierID";
  static const String supplierName = "supplierName";
  static const String supplierCode = "supplierCode";
  static const String registrationDate = "registrationDate";
  static const String status = "status";
  static const String actions = "actions";
  static const String search = "search";
  static const String show = "show";
  static const String supplier = "supplier";
}
