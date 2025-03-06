import 'package:flutter/material.dart';
import 'package:flutter_assessment/app/modules/shared/presentation/components/app_container_component.dart';
import 'package:flutter_assessment/app/modules/shared/presentation/components/button_component.dart';
import 'package:flutter_assessment/app/modules/shared/presentation/components/text_field_component.dart';
import 'package:flutter_assessment/core/framework/utils/images.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/framework/utils/colors.dart';
import '../../../../../core/framework/utils/spacings.dart';
import '../../../shared/presentation/pages/app_wrapper.dart';

class MeFragment extends StatefulWidget {
  const MeFragment({super.key});

  @override
  State<MeFragment> createState() => _MeFragmentState();
}

class _MeFragmentState extends State<MeFragment> {
  bool _isChecked = false;

  void toggleCheckBox() {
    _isChecked = !_isChecked;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ScreenPageWrapper(
      scrollable: true,
      wrapperColor: Colors.white,
      body: [
        SizedBox(
          height: Spacings.spacing24,
        ),
        Row(
          children: [
            Text(
              "Account",
              style: TextStyle(
                fontSize: Spacings.spacing24,
                fontWeight: FontWeight.w600,
                color: AppColors.color35312D,
              ),
            ),
          ],
        ),
        SizedBox(
          height: Spacings.spacing30,
        ),
        Stack(
          alignment: Alignment.bottomRight,
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              radius: Spacings.spacing50,
              backgroundColor: AppColors.colorF8F9FA,
              child: SvgPicture.asset(
                Svgs.personIcon,
                height: Spacings.spacing60,
              ),
            ),
            Positioned(
              child: CircleAvatar(
                backgroundColor: AppColors.colorF6F6F7,
                radius: Spacings.spacing16,
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: Spacings.spacing18,
                  color: AppColors.color43B888,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: Spacings.spacing36,
        ),
        TextFieldComponent(
          hint: "Tabish",
        ),
        SizedBox(
          height: Spacings.spacing14,
        ),
        TextFieldComponent(
          hint: "Bin Tahir",
        ),
        SizedBox(
          height: Spacings.spacing14,
        ),
        TextFieldComponent(
          hint: "tabish@m2m.com",
        ),
        SizedBox(
          height: Spacings.spacing14,
        ),
        TextFieldComponent(
          hint: "+12345678901",
        ),
        SizedBox(
          height: Spacings.spacing14,
        ),
        TextFieldComponent(
          hint: "************",
        ),
        SizedBox(
          height: Spacings.spacing28,
        ),
        Row(
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Join Date: ",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: Spacings.spacing14,
                      color: AppColors.color292A2C,
                    ),
                  ),
                  TextSpan(
                    text: "February 23, 2024",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: Spacings.spacing14,
                      color: AppColors.color777779,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: Spacings.spacing20,
        ),
        AppContainerComponent(
          borderRadius: Spacings.spacing8,
          color: AppColors.colorF8F9FA,
          padding: EdgeInsets.symmetric(
            horizontal: Spacings.spacing24,
            vertical: Spacings.spacing16,
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Active Subscription",
                    style: TextStyle(
                      fontSize: Spacings.spacing16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.color777779,
                    ),
                  ),
                  SizedBox(
                    height: Spacings.spacing10,
                  ),
                  Text(
                    "﹩10/month",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: Spacings.spacing24,
                      color: AppColors.color35312D,
                    ),
                  ),
                  SizedBox(height: Spacings.spacing16),
                  Row(
                    children: [
                      AppContainerComponent(
                        padding: EdgeInsets.symmetric(
                          vertical: Spacings.spacing6,
                          horizontal: Spacings.spacing14,
                        ),
                        borderRadius: Spacings.spacing30,
                        color: AppColors.color43B888,
                        child: Text(
                          "Deactivate",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: Spacings.spacing14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Spacings.spacing6,
                      ),
                      AppContainerComponent(
                        padding: EdgeInsets.symmetric(
                          vertical: Spacings.spacing6,
                          horizontal: Spacings.spacing14,
                        ),
                        borderRadius: Spacings.spacing30,
                        borderColor: AppColors.color43B888,
                        borderWidth: 1,
                        color: Colors.white,
                        child: Text(
                          "Share",
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
                    height: Spacings.spacing10,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: Spacings.spacing24,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Transform.scale(
              scale: 1.2,
              child: Checkbox.adaptive(
                  activeColor: AppColors.color43B888,
                  value: _isChecked,
                  onChanged: (val) {
                    toggleCheckBox();
                  }),
            ),
            Expanded(
              child: Text(
                "Opt into receiving weekly legacy questions to ask your family",
                style: TextStyle(
                  fontSize: Spacings.spacing14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.color777779,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: Spacings.spacing24,
        ),
        ButtonComponent(
          expanded: true,
          text: "Save Details",
          onPressed: () {},
        ),
      ],
    );
  }
}
