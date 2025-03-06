import 'package:flutter/material.dart';
import 'package:flutter_assessment/app/modules/shared/presentation/components/button_component.dart';
import 'package:flutter_assessment/app/modules/shared/presentation/pages/app_wrapper.dart';
import 'package:flutter_assessment/core/framework/utils/colors.dart';
import 'package:flutter_assessment/core/framework/utils/spacings.dart';

class AuthSuccessPage extends StatelessWidget {
  const AuthSuccessPage({
    super.key,
    required this.message,
    required this.onContinue,
  });

  final String message;
  final VoidCallback onContinue;

  @override
  Widget build(BuildContext context) {
    return ScreenPageWrapper(
      wrapperColor: Colors.white,
      scrollable: false,
      body: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.check_circle,
                size: Spacings.spacing64,
                color: AppColors.color43B888,
              ),
              SizedBox(
                height: Spacings.spacing24,
              ),
              Text(
                message,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: Spacings.spacing24,
                  fontWeight: FontWeight.w600,
                  color: AppColors.color292A2C,
                ),
              ),
              SizedBox(
                height: Spacings.spacing28,
              ),
              ButtonComponent(
                expanded: true,
                text: "Continue",
                onPressed: () {},
              ),
            ],
          ),
        )
      ],
    );
  }
}
