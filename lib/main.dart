import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_speed_test/presentation/screens/dashboard_screen.dart'
    deferred as dashboard;
import 'package:flutter_web_speed_test/presentation/screens/forgot_password_screen.dart'
    deferred as forgot_password;
import 'package:flutter_web_speed_test/presentation/screens/login_sceen.dart'
    deferred as login;
import 'package:flutter_web_speed_test/presentation/screens/manage_suppliers_screen.dart'
    deferred as manage_suppliers;
import 'package:flutter_web_speed_test/presentation/screens/otp_screen.dart'
    deferred as otp_screen;
import 'package:flutter_web_speed_test/presentation/screens/reset_password_screen.dart'
    deferred as reset_password_screen;
import 'package:flutter_web_speed_test/presentation/screens/signup_screen.dart'
    deferred as signup_sceen;
import 'package:flutter_web_speed_test/utils/constants/color_constants/color_constants.dart';
import 'package:flutter_web_speed_test/utils/constants/get_storage.dart';
import 'package:flutter_web_speed_test/utils/constants/routes/routes.dart';
import 'package:flutter_web_speed_test/utils/localization/language_delegate.dart';
import 'package:flutter_web_speed_test/utils/localization/language_entity.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qlevar_router/qlevar_router.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  final _getStorage = GetStorage();
  setPathUrlStrategy();
  bool isDarkMode = _getStorage.read(GetStorageKey.isDarkMode) ?? false;
  _getStorage.write(GetStorageKey.isDarkMode, isDarkMode);
  runApp(
    GetMaterialApp.router(
      title: "Fauree Dashboard",
      theme: ThemeData(
        textTheme: TextTheme(
          button: GoogleFonts.montserrat(
            fontSize: 18,
            color: AppColors.authContainer,
            fontWeight: FontWeight.w500,
          ),
          headline1: GoogleFonts.montserrat(
            fontSize: 24,
            color: AppColors.black,
            fontWeight: FontWeight.w700,
          ),
          headline2: GoogleFonts.montserrat(
            fontSize: 18,
            color: AppColors.black,
            fontWeight: FontWeight.w200,
          ),
          headline3: GoogleFonts.montserrat(
            fontSize: 18,
            color: AppColors.authContainer,
            fontWeight: FontWeight.w300,
          ),
          headline4: GoogleFonts.montserrat(
            fontSize: 16,
            color: AppColors.dashboardCategory,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      // getPages: [
      //   GetPage(name: '/login', page: () => login.LoginScreen(),middlewares: ),
      //   GetPage(name: '/signup', page: () => signup_sceen.SignUpScreen()),
      //   GetPage(
      //       name: '/forgot_password',
      //       page: () => forgot_password.ForgotPasswordScreen()),
      //   GetPage(
      //       name: '/reset_password',
      //       page: () => reset_password_screen.ResetPasswordScreen()),
      //   GetPage(name: '/otp', page: () => otp_screen.OTPScreen()),
      //   GetPage(name: '/home', page: () => dashboard.DashboardScreen()),
      //   GetPage(
      //       name: '/home/manage_suppliers',
      //       page: () => manage_suppliers.ManageSuppliersScreen()),
      // ],
      supportedLocales: Languages.languages.map((e) => Locale(e.code)).toList(),
      locale: const Locale('en', 'US'),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      // darkTheme: AppThemes.darkThemeData,
      debugShowCheckedModeBanner: false,
      routerDelegate: QRouterDelegate(Routes.routes),
      routeInformationParser: const QRouteInformationParser(),
    ),
  );
}
