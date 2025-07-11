import 'package:flutter/material.dart';
import 'package:instagram/Core/Utils/app_styles.dart';
import 'package:instagram/Core/Utils/size_config.dart';
import 'package:instagram/Core/Utils/strings.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: PaddingSizeConfig.paddingH16),
      child: Column(
        children: [
          SizedBox(height: HeigthSizeConfig.kHeigth80),
          Text(Strings.instagram, style: AppStyles.styelsReq49()),
        ],
      ),
    );
  }
}
