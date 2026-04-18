import 'package:flutter/material.dart';
import 'package:instagram/core/Extensions/extensions.dart';
import 'package:instagram/core/utils/app_styles.dart';
import 'package:instagram/core/utils/strings.dart';
import 'package:instagram/core/widgets/custom_button.dart';
import 'package:instagram/core/widgets/custom_text_form_field.dart';
import 'package:instagram/features/auth/presentation/screens/widgets/sign_with_social_media.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: context.screenHeight * 0.12),
          Text(
            "Instagran",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,

              // color: isdark ? Colors.white : Colors.black,
            ),
          ),
          SizedBox(height: context.screenHeight * 0.2),
          CustomTextFormField(
            validator: (value) {
              final reg = RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
              );
              if (value!.isEmpty) {
                return Strings.pleaseEnterYourEmail;
              }
              if (!reg.hasMatch(value)) {
                return Strings.pleaseEnterAValidEmail;
              }
              return null;
            },
            style: TextStyle(),
            // controller: signInCubit.emailController,
            hintText: Strings.email,
            prefixIcon: Icon(Icons.email),
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: context.screenHeight * 0.02),
          CustomTextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return Strings.pleaseEnterYourPassword;
              } else if (value.length < 7) {
                return Strings.pleaseEnterMoreThanLettersOrNumbers;
              }
              return null;
            },
            style: TextStyle(),
            hintText: Strings.password,
            // controller: signInCubit.passwordController,
            keyboardType: TextInputType.text,
            prefixIcon: Icon(
              Icons.password,
              // color: isdark ? Colors.white : Colors.black,
            ),
            // obscureText: signInCubit.isObsecure,
            suffixIcon: IconButton(
              onPressed: () {
                // signInCubit.changePasswordVisibility();
              },
              icon: Icon(
                Icons.visibility,
                // signInCubit.suffix,
                // color: isdark ? Colors.white : Colors.black,
              ),
            ),
          ),

          SizedBox(height: context.screenHeight * 0.03),
          Text(
            Strings.signUpWith,
            style: AppStyles.styleReregular18(isDark: false),
          ),
          SignWithSocialMedia(),
          SizedBox(height: context.screenHeight * 0.03), //! 20
          CustomButton(
            onTap: () {
              // if (signInCubit.formKey.currentState!.validate()) {
              //   signInCubit.formKey.currentState!.save();

              // }
              // GoRouter.of(context).pushReplacement(AppRouter.kMainView);
            },
            borderRadius: 12,
            color: Colors.blueAccent,
            width: double.infinity,
            height: 50,
            child: Center(
              child: Text(
                Strings.signUp,
                style: AppStyles.styleReregular18(
                  isDark: false,
                ).copyWith(color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: context.screenHeight * 0.15), //! 20
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Strings.doUouHaveAnAccount,
                style: TextStyle(
                  fontSize: 12,
                  // color: isdark ? Colors.white : Colors.black,
                ),
              ),
              TextButton(
                onPressed: () {
                  // GoRouter.of(context).push(AppRouter.kSignUpView);
                },
                child: Text(
                  Strings.signUp,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
