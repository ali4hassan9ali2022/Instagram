import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kSignUpView = "/SignUpView";
  static const kSignInView = "/SignInView";
  static const kMainView = "/MainView";
  static const kCommentView = "/kCommentView";
  static GoRouter router = GoRouter(
    routes: [
      // GoRoute(path: "/", builder: (context, state) => SplashView()),
      // GoRoute(path: kSignUpView, builder: (context, state) => SignUpView()),
      // GoRoute(path: kSignInView, builder: (context, state) => SignInView()),
      // GoRoute(path: kMainView, builder: (context, state) => MainView()),
      // GoRoute(path: kCommentView, builder: (context, state) => CommentView()),
    ],
  );
}