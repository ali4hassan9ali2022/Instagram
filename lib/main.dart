import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram/Core/Utils/app_router.dart';
import 'package:instagram/Core/Utils/size_config.dart';

void main() {
  runApp(const InstgramApp());
}

class InstgramApp extends StatelessWidget {
  const InstgramApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:  Size(WidthSizeConfig.kWidth360, HeigthSizeConfig.kHeigth360),
      minTextAdapt: true,
      ensureScreenSize: true,
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        
      ),
    );
  }
}