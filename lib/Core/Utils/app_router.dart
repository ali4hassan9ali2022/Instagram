import 'package:go_router/go_router.dart';
import 'package:instagram/Features/Splash/Presentation/Views/splash_view.dart';
import 'package:instagram/features/auth/presentation/screens/log_in_view.dart';

abstract class AppRouter {
  static const String kSplashView = "/";
  static const String kLogInView = "/login";

  static final router = GoRouter(
    routes: [
      GoRoute(path: kSplashView, builder: (context, state) => SplashView()),
      GoRoute(path: kLogInView, builder: (context, state) => LogInView()),
    ],
  );
}
