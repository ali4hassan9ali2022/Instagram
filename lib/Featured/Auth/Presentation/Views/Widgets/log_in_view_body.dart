import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram/Core/Utils/app_helper.dart';
import 'package:instagram/Core/Utils/app_router.dart';
import 'package:instagram/Core/Utils/app_styles.dart';
import 'package:instagram/Core/Utils/size_config.dart';
import 'package:instagram/Core/Utils/strings.dart';
import 'package:instagram/Core/Widgets/custom_button.dart';
import 'package:instagram/Core/Widgets/custom_text_form_field.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: PaddingSizeConfig.paddingH16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: HeigthSizeConfig.kHeigth80),
            Text(Strings.instagram, style: AppStyles.styelsRegular49()),
            SizedBox(height: HeigthSizeConfig.kHeigth16),
            Text(
              Strings.instagramSubTitle,
              textAlign: TextAlign.center,
              style: AppStyles.styelsRegular15(),
            ),
            SizedBox(height: HeigthSizeConfig.kHeigth39),
            CustomTextFormField(
              enabledBorder: AppHelper.outlineInputBorder(
                color: Color(0xff252525),
              ),
              border: AppHelper.outlineInputBorder(color: Color(0xff252525)),
              focusedBorder: AppHelper.outlineInputBorder(
                color: Color(0xff252525),
              ),
              hintText: Strings.kUserName,
              hintStyle: AppStyles.styelsRegular14(),
            ),
            SizedBox(height: HeigthSizeConfig.kHeigth16),
            CustomTextFormField(
              enabledBorder: AppHelper.outlineInputBorder(
                color: Color(0xff252525),
              ),
              border: AppHelper.outlineInputBorder(color: Color(0xff252525)),
              focusedBorder: AppHelper.outlineInputBorder(
                color: Color(0xff252525),
              ),
              hintText: Strings.kPassword,
              hintStyle: AppStyles.styelsRegular14(),
            ),
            SizedBox(height: HeigthSizeConfig.kHeigth19),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                Strings.kForgotPassword,

                style: AppStyles.styelsMedium12(),
              ),
            ),
            SizedBox(height: HeigthSizeConfig.kHeigth30),
            CustomButton(
              borderRadius: BorderRadiusConfig.kBorderRadius8,
              color: Color(0xff3797EF),
              width: double.infinity,
              height: HeigthSizeConfig.kHeigth44,
              child: Center(
                child: Text(
                  Strings.kLogIn,
                  style: AppStyles.styelsSemiBold14(),
                ),
              ),
            ),
            SizedBox(height: HeigthSizeConfig.kHeigth37),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.facebook, color: Color(0xff3797EF)),
                SizedBox(width: WidthSizeConfig.kWidth4),
                Text(
                  Strings.kLogInWithFacebook,
                  style: AppStyles.styelsRegular18(),
                ),
              ],
            ),
            SizedBox(height: HeigthSizeConfig.kHeigth41_5),
            Text(
              Strings.kOr,
              style: AppStyles.styelsRegular14().copyWith(
                color: Color(0xff555555),
              ),
            ),
            SizedBox(height: HeigthSizeConfig.kHeigth41_5),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: Strings.kDontHaveAnAccount,
                    style: AppStyles.styelsRegular14().copyWith(
                      color: Color(0xffffffff).withOpacity(0.6),
                    ),
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        GoRouter.of(context).push(AppRouter.kSignUpView);
                      },
                    text: Strings.kSignUp,
                    style: AppStyles.styelsRegular14().copyWith(
                      color: Color(0xff3797EF),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
