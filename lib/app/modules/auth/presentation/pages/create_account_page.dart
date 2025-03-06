import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assessment/app/modules/auth/presentation/pages/auth_success_page.dart';
import 'package:flutter_assessment/app/modules/auth/presentation/pages/login_page.dart';
import 'package:flutter_assessment/app/modules/auth/presentation/pages/otp_verification_page.dart';
import 'package:flutter_assessment/app/modules/shared/presentation/components/button_component.dart';
import 'package:flutter_assessment/app/modules/shared/presentation/components/text_field_component.dart';
import 'package:flutter_assessment/core/framework/navigator/navigator.dart';
import 'package:flutter_assessment/core/framework/utils/colors.dart';
import 'package:flutter_assessment/core/framework/utils/images.dart';

import '../../../../../core/framework/utils/spacings.dart';
import '../../../dashboard/presentation/pages/dashboard_page.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

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
                  // toolbarHeight: 100,
                  // pinned: true,
                  backgroundColor: AppColors.color43B888,
                  expandedHeight: 300,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Stack(
                      alignment: Alignment.center,
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
                        Image.asset(
                          Pngs.signInLogo,
                        ),
                        Positioned(
                          bottom: 60,
                          left: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Create an account",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Spacings.spacing24,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: Spacings.spacing10,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Already have an account?",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Spacings.spacing14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(text: " "),
                                    TextSpan(
                                      text: "Sign in",
                                      style: TextStyle(
                                        color: AppColors.color43B888,
                                        fontSize: Spacings.spacing14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          navigator.pushReplace(
                                            page: LoginPage(),
                                          );
                                        },
                                    ),
                                  ],
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
                          hint: "First Name*",
                        ),
                        SizedBox(
                          height: Spacings.spacing14,
                        ),
                        TextFieldComponent(
                          hint: "Last Name*",
                        ),
                        SizedBox(
                          height: Spacings.spacing14,
                        ),
                        TextFieldComponent(
                          hint: "Email*",
                        ),
                        SizedBox(
                          height: Spacings.spacing14,
                        ),
                        TextFieldComponent(
                          hint: "Password*",
                        ),
                        SizedBox(
                          height: Spacings.spacing14,
                        ),
                        TextFieldComponent(
                          hint: "Confirm Password*",
                        ),
                        SizedBox(
                          height: Spacings.spacing28,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Transform.scale(
                              scale: 1.2,
                              child: Checkbox.adaptive(
                                  activeColor: AppColors.color43B888,
                                  value: true,
                                  onChanged: (val) {
                                    // ref.read(privacyAccepted.notifier).state =
                                    //     val ?? false;
                                  }),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "I agree to the ",
                                    style: TextStyle(
                                      fontSize: Spacings.spacing14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.color777779,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Terms & Conditions",
                                    style: TextStyle(
                                      color: AppColors.color43B888,
                                      fontSize: Spacings.spacing14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {},
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: Spacings.spacing20,
                        ),
                        ButtonComponent(
                          expanded: true,
                          text: "Create an account",
                          onPressed: () {
                            navigator.push(
                              page: OtpVerificationPage(
                                onSuccess: () {
                                  navigator.push(
                                    page: AuthSuccessPage(
                                      message:
                                          "Password has been set successfully",
                                      onContinue: () {
                                        navigator.pushAndClearStack(
                                          page: DashboardPage(),
                                        );
                                      },
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          height: Spacings.spacing10,
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
