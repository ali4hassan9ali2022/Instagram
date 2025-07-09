import 'package:flutter/material.dart';
import 'package:instagram/Featured/Splash/Presentation/Views/Widgets/splash_view_body.dart';


class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black, body: SplashViewBody());
  }
}
