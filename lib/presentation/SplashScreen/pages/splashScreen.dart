import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:celebrazioni/theme/theme_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      final goRouter = GoRouter.of(context);
      goRouter.go('/onboarding');
    });
  }

  @override
  Widget build(BuildContext context) {
 
      return Scaffold(
        backgroundColor: PrimaryColors.white,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/celebrazioni1.jpeg',
                // scale: 4.r,
                height: 84.h,
                width: 316.w,
              ).animate().fadeIn(),
              5.verticalSpace,
              Image.asset(
                'assets/images/celebrazioni2.jpeg',
                // scale: 4.r,
                height: 84.h,
                width: 316.w,
              ).animate().fadeIn(),
            ],
          ),
        ),
      );
    
  }
}
