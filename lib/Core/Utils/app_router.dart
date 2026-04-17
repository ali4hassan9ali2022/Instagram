import 'package:go_router/go_router.dart';
import 'package:instagram/Features/Splash/Presentation/Views/splash_view.dart';

abstract class AppRouter {
  static const String kSplashView = "/";

  static final router = GoRouter(
    routes: [
      GoRoute(path: kSplashView, builder: (context, state) => SplashView()),
    ],
  );
}
