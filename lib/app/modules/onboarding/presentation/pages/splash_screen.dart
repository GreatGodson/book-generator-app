import 'package:flutter/material.dart';
import 'package:flutter_assessment/app/modules/auth/presentation/pages/login_page.dart';
import 'package:flutter_assessment/core/framework/navigator/navigator.dart';
import 'package:flutter_assessment/core/framework/utils/colors.dart';
import 'package:flutter_assessment/core/framework/utils/images.dart';

import '../../../shared/presentation/pages/app_wrapper.dart';

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
    return ScreenPageWrapper(
      wrapperColor: AppColors.color43B888,
      scrollable: false,
      body: [
        Expanded(
          child: Image.asset(
            Pngs.splashIcon,
          ),
        ),
      ],
    );
  }
}
