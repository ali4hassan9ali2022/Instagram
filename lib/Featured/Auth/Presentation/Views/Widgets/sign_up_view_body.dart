import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram/Core/Utils/app_helper.dart';
import 'package:instagram/Core/Utils/app_styles.dart';
import 'package:instagram/Core/Utils/size_config.dart';
import 'package:instagram/Core/Utils/strings.dart';
import 'package:instagram/Core/Widgets/custom_button.dart';
import 'package:instagram/Core/Widgets/custom_text_form_field.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: PaddingSizeConfig.paddingH16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: HeigthSizeConfig.kHeigth16),
            Text(
              Strings.kCreateAnAccountAndSignUp,
              style: AppStyles.styelsRegular15(),
            ),
            SizedBox(height: HeigthSizeConfig.kHeigth16),
            CircleAvatar(
              radius: 50.r,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 49.r,
                // backgroundColor: Color(0xfffffacc),
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.photo_camera,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: HeigthSizeConfig.kHeigth10),
            CustomTextFormField(
              enabledBorder: AppHelper.outlineInputBorder(
                color: Colors.grey[500],
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
                color: Colors.grey[500],
              ),
              border: AppHelper.outlineInputBorder(color: Color(0xff252525)),
              focusedBorder: AppHelper.outlineInputBorder(
                color: Color(0xff252525),
              ),
              hintText: Strings.kName,
              hintStyle: AppStyles.styelsRegular14(),
            ),
            SizedBox(height: HeigthSizeConfig.kHeigth16),
            CustomTextFormField(
              enabledBorder: AppHelper.outlineInputBorder(
                color: Colors.grey[500],
              ),
              border: AppHelper.outlineInputBorder(color: Color(0xff252525)),
              focusedBorder: AppHelper.outlineInputBorder(
                color: Color(0xff252525),
              ),
              hintText: Strings.kEmail,
              hintStyle: AppStyles.styelsRegular14(),
            ),
            SizedBox(height: HeigthSizeConfig.kHeigth16),
            CustomTextFormField(
              enabledBorder: AppHelper.outlineInputBorder(
                color: Colors.grey[500],
              ),
              border: AppHelper.outlineInputBorder(color: Color(0xff252525)),
              focusedBorder: AppHelper.outlineInputBorder(
                color: Color(0xff252525),
              ),
              hintText: Strings.kPassword,
              hintStyle: AppStyles.styelsRegular14(),
            ),
            SizedBox(height: HeigthSizeConfig.kHeigth16),
            CustomTextFormField(
              enabledBorder: AppHelper.outlineInputBorder(
                color: Colors.grey[500],
              ),
              border: AppHelper.outlineInputBorder(color: Color(0xff252525)),
              focusedBorder: AppHelper.outlineInputBorder(
                color: Color(0xff252525),
              ),
              hintText: Strings.kConfirmPassword,
              hintStyle: AppStyles.styelsRegular14(),
            ),
            SizedBox(height: HeigthSizeConfig.kHeigth30),
            CustomButton(
              borderRadius: BorderRadiusConfig.kBorderRadius8,
              color: Color(0xff3797EF),
              width: double.infinity,
              height: HeigthSizeConfig.kHeigth44,
              child: Center(
                child: Text(
                  Strings.kSignUp,
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
                      color: Colors.grey,
                    ),
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        GoRouter.of(context).pop();
                      },
                    text: Strings.kLogIn,
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
