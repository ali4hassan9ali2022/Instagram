import 'package:flutter/material.dart';
import 'package:instagram/Core/utils/app_router.dart';

void main() {
  runApp(const InstagramApp());
}

class InstagramApp extends StatelessWidget {
  const InstagramApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Instagram",
      routerConfig: AppRouter.router,
    );
  }
}
