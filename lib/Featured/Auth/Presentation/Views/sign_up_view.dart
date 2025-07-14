import 'package:flutter/material.dart';
import 'package:instagram/Core/Utils/app_styles.dart';
import 'package:instagram/Core/Utils/strings.dart';
import 'package:instagram/Featured/Auth/Presentation/Views/Widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(Strings.instagram, style: AppStyles.styelsRegular49()),
        ),
        body: SignUpViewBody(),
      ),
    );
  }
}
