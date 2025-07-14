import 'package:flutter/material.dart';
import 'package:instagram/Core/Utils/app_styles.dart';
import 'package:instagram/Featured/Auth/Presentation/Views/Widgets/log_in_view_body.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Text(
        "By Ali Kasrawy",
        textAlign: TextAlign.center,
        style: AppStyles.styelsRegular14().copyWith(color: Color(0xff4C4C4C)),
      ),
      body: LogInViewBody(),
    );
  }
}
