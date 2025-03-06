import 'package:flutter/material.dart';
import 'package:flutter_assessment/app/modules/auth/presentation/pages/otp_verification_page.dart';
import 'package:flutter_assessment/app/modules/auth/presentation/pages/reset_password_page.dart';
import 'package:flutter_assessment/app/modules/shared/presentation/components/button_component.dart';
import 'package:flutter_assessment/app/modules/shared/presentation/components/text_field_component.dart';
import 'package:flutter_assessment/core/framework/navigator/navigator.dart';
import 'package:flutter_assessment/core/framework/utils/colors.dart';
import 'package:flutter_assessment/core/framework/utils/images.dart';

import '../../../../../core/framework/utils/spacings.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  toolbarHeight: 100,
                  pinned: true,
                  backgroundColor: AppColors.color43B888,
                  expandedHeight: 300,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                Pngs.authBackground,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 60,
                          left: 10,
                          child: InkWell(
                            onTap: () {
                              navigator.pop();
                            },
                            child: CircleAvatar(
                              radius: Spacings.spacing16,
                              backgroundColor: AppColors.color43B888,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.arrow_back_ios_new,
                                    size: Spacings.spacing18,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 60,
                          left: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Forgot Password",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Spacings.spacing24,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: Spacings.spacing10,
                              ),
                              Text(
                                "Please enter your email or phone number to\nget reset password.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Spacings.spacing14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(Spacings.spacing20),
                    child: Container(
                      width: double.maxFinite,
                      padding: const EdgeInsets.symmetric(
                        vertical: Spacings.spacing20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(Spacings.spacing20),
                          topRight: Radius.circular(
                            Spacings.spacing20,
                          ),
                        ),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Spacings.spacing20,
                    ),
                    child: Column(
                      children: [
                        TextFieldComponent(
                          hint: "tabish@m2m.com",
                        ),
                        SizedBox(
                          height: Spacings.spacing14,
                        ),
                        ButtonComponent(
                          expanded: true,
                          text: "Continue",
                          onPressed: () {
                            navigator.push(
                              page: OtpVerificationPage(
                                onSuccess: () {
                                  navigator.push(
                                    page: ResetPasswordPage(),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          height: Spacings.spacing24,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: Spacings.spacing20,
          ),
        ],
      ),
    );
  }
}
