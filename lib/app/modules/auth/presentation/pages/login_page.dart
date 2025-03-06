import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assessment/app/modules/auth/presentation/pages/create_account_page.dart';
import 'package:flutter_assessment/app/modules/auth/presentation/pages/forgot_password_page.dart';
import 'package:flutter_assessment/app/modules/shared/presentation/components/button_component.dart';
import 'package:flutter_assessment/app/modules/shared/presentation/components/text_field_component.dart';
import 'package:flutter_assessment/core/framework/navigator/navigator.dart';
import 'package:flutter_assessment/core/framework/utils/colors.dart';
import 'package:flutter_assessment/core/framework/utils/images.dart';

import '../../../../../core/framework/utils/spacings.dart';
import '../../../dashboard/presentation/pages/dashboard_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                  toolbarHeight: 20,
                  pinned: true,
                  backgroundColor: AppColors.color43B888.withOpacity(0.1),
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
                                "Sign in",
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
                                      text: "New User?",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Spacings.spacing14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(text: " "),
                                    TextSpan(
                                      text: "Create an account",
                                      style: TextStyle(
                                        color: AppColors.color43B888,
                                        fontSize: Spacings.spacing14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          navigator.pushReplace(
                                            page: CreateAccountPage(),
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
                          hint: "tabish@m2m.com",
                        ),
                        SizedBox(
                          height: Spacings.spacing14,
                        ),
                        TextFieldComponent(
                          hint: "*********",
                        ),
                        SizedBox(
                          height: Spacings.spacing10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                navigator.push(
                                  page: ForgotPasswordPage(),
                                );
                              },
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  fontSize: Spacings.spacing14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.color43B888,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Spacings.spacing20,
                        ),
                        ButtonComponent(
                          expanded: true,
                          text: "Sign in",
                          onPressed: () {
                            navigator.pushAndClearStack(
                              page: DashboardPage(),
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
          Text(
            "Pricing  -  Blog  -  About",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: Spacings.spacing14,
              color: AppColors.color35312D,
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
