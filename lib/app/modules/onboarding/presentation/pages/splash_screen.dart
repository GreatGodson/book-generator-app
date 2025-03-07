import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_assessment/app/modules/auth/presentation/pages/login_page.dart';
import 'package:flutter_assessment/core/framework/navigator/navigator.dart';
import 'package:flutter_assessment/core/framework/utils/colors.dart';
import 'package:flutter_assessment/core/framework/utils/images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _next();
  }

  void _next() {
    Future.delayed(const Duration(seconds: 3), () {
      navigator.push(
        page: LoginPage(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.color43B888,
                    AppColors.color2FA575,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Center(
                child: Image.asset(
                  Pngs.splashIcon,
                ).animate().fadeIn(duration: 1.seconds).scale(
                    duration: 1.2.seconds,
                    begin: Offset(0.8, 0.8),
                    end: Offset(1, 1)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
