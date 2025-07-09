import 'package:flutter/material.dart';
import 'package:instagram/Featured/Splash/Presentation/Views/Widgets/custom_icon_animation.dart';
import 'package:instagram/Featured/Splash/Presentation/Views/Widgets/custom_text_animation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animationText;
  late Animation<double> scaleAnimation;
  late Animation<Color?> colorAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHomeView();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconAnimation(
            animationController: animationController,
            scaleAnimation: scaleAnimation,
            colorAnimation: colorAnimation,
          ),
          SizedBox(height: 30),
          CustomTextAnimation(animationText: animationText),
        ],
      ),
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    animationText = Tween<Offset>(
      begin: Offset(0, 5),
      end: Offset.zero,
    ).animate(animationController);
    scaleAnimation = Tween<double>(begin: 0.5, end: 1.2).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeInOut),
    );
    colorAnimation = ColorTween(begin: Colors.grey, end: Colors.deepOrange)
        .animate(
          CurvedAnimation(parent: animationController, curve: Curves.easeIn),
        );
    animationController.forward();
  }

  void navigateToHomeView() {
    Future.delayed(const Duration(seconds: 3), () {
      // Get.to(() => const HomeView(),
      //     transition: Transition.fade, duration: kTransitionDuration);
      // ignore: use_build_context_synchronously
      // final user = Supabase.instance.client.auth.currentUser;

      // if (user != null) {
      //   GoRouter.of(context).pushReplacement(AppRouter.kMainView);
      // } else {
      //   GoRouter.of(context).push(AppRouter.kSignInView);
      // }
    });
  }
}
