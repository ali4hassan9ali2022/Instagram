import 'package:go_router/go_router.dart';
import 'package:instagram/Featured/Auth/Presentation/Views/log_in_view.dart';
import 'package:instagram/Featured/Auth/Presentation/Views/sign_up_view.dart';
import 'package:instagram/Featured/Splash/Presentation/Views/splash_view.dart';

abstract class AppRouter {
  static const kSignUpView = "/SignUpView";
  static const kSignInView = "/SignInView";
  static const kMainView = "/MainView";
  static const kCommentView = "/kCommentView";
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(path: "/", builder: (context, state) => SplashView()),
      GoRoute(path: kSignUpView, builder: (context, state) => SignUpView()),
      GoRoute(path: kSignInView, builder: (context, state) => LogInView()),
      // GoRoute(path: kMainView, builder: (context, state) => MainView()),
      // GoRoute(path: kCommentView, builder: (context, state) => CommentView()),
    ],
  );
}