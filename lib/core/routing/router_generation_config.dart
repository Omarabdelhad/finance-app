import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/features/main_screen/main_screen.dart';
import 'package:finance_app/features/on_boreding_screen/auth/create_password_screen.dart';
import 'package:finance_app/features/on_boreding_screen/auth/forgot_password_screen.dart';
import 'package:finance_app/features/on_boreding_screen/auth/login_screen.dart';
import 'package:finance_app/features/on_boreding_screen/auth/password_changed_screen.dart';
import 'package:finance_app/features/on_boreding_screen/auth/register_screen.dart';
import 'package:finance_app/features/on_boreding_screen/on_boreding_screen.dart';
import 'package:finance_app/features/vreify_otp/verify_otp_screen.dart';
import 'package:go_router/go_router.dart';

class RouterGenerationConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.OnBoredingScreen,
    routes: [
      GoRoute(
        path: AppRoutes.OnBoredingScreen,
        name: AppRoutes.OnBoredingScreen,
        builder: (context, state) => const OnBoredingScreen(),
      ),

      GoRoute(
        path: AppRoutes.loginScreen,
        name: AppRoutes.loginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.registerScreen,
        name: AppRoutes.registerScreen,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: AppRoutes.forgetPassword,
        name: AppRoutes.forgetPassword,
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
       GoRoute(
        path: AppRoutes.createPassword,
        name: AppRoutes.createPassword,
        builder: (context, state) => const CreatePasswordScreen(),
      ),
      GoRoute(
        path: AppRoutes.changePassword,
        name: AppRoutes.changePassword,
        builder: (context, state) => const PasswordChangedScreen(),
      ),
      GoRoute(path: AppRoutes.VerifyOtpScreen,
      name: AppRoutes.VerifyOtpScreen,
      builder: (context, state) => const VerifyOtpScreen(),),
       GoRoute(
        path: AppRoutes.mainScreen,
        name: AppRoutes.mainScreen,
        builder: (context, state) => const MainScreen(),
      )
    ],
  );
}
