import 'package:flutter_web_speed_test/presentation/screens/dashboard_screen.dart'
    deferred as dashboard;
import 'package:flutter_web_speed_test/presentation/screens/forgot_password_screen.dart'
    deferred as forgot;
import 'package:flutter_web_speed_test/presentation/screens/login_sceen.dart';
import 'package:flutter_web_speed_test/presentation/screens/manage_suppliers_screen.dart'
    deferred as manage;
import 'package:flutter_web_speed_test/presentation/screens/otp_screen.dart'
    deferred as otp_screen;
import 'package:flutter_web_speed_test/presentation/screens/reset_password_screen.dart'
    deferred as reset;
import 'package:flutter_web_speed_test/presentation/screens/signup_screen.dart'
    deferred as signup;
import 'package:qlevar_router/qlevar_router.dart';
import 'package:flutter_web_speed_test/common/functions/deferred_loader.dart';

class Routes {
  static final routes = <QRoute>[
    QRoute(path: '/', builder: () => const LoginScreen()),
    QRoute(
      path: '/signup',
      builder: () => signup.SignUpScreen(),
      middleware: [
        DeferredLoader(signup.loadLibrary),
      ],
    ),
    QRoute(
      path: '/forgot_password',
      builder: () => forgot.ForgotPasswordScreen(),
      middleware: [
        DeferredLoader(forgot.loadLibrary),
      ],
    ),
    QRoute(
      path: '/reset_password',
      builder: () => reset.ResetPasswordScreen(),
      middleware: [
        DeferredLoader(reset.loadLibrary),
      ],
    ),
    QRoute(
      path: '/home',
      builder: () => dashboard.DashboardScreen(),
      middleware: [
        DeferredLoader(dashboard.loadLibrary),
      ],
    ),
    QRoute(
      path: '/otp',
      builder: () => otp_screen.OTPScreen(),
      middleware: [
        DeferredLoader(otp_screen.loadLibrary),
      ],
    ),
    QRoute(
      path: '/home/manage_suppliers',
      builder: () => manage.ManageSuppliersScreen(),
      middleware: [
        DeferredLoader(manage.loadLibrary),
      ],
    ),
  ];
}
