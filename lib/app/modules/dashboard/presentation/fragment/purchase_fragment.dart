import 'package:flutter/material.dart';
import 'package:flutter_assessment/app/modules/shared/presentation/components/app_container_component.dart';
import 'package:flutter_assessment/app/modules/shared/presentation/pages/app_wrapper.dart';
import 'package:flutter_assessment/core/framework/utils/colors.dart';
import 'package:flutter_assessment/core/framework/utils/images.dart';
import 'package:flutter_assessment/core/framework/utils/spacings.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PurchaseFragment extends StatelessWidget {
  const PurchaseFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenPageWrapper(
      wrapperColor: Colors.white,
      body: [
        SizedBox(
          height: Spacings.spacing24,
        ),
        Row(
          children: [
            Text(
              "Purchases",
              style: TextStyle(
                fontSize: Spacings.spacing24,
                fontWeight: FontWeight.w600,
                color: AppColors.color35312D,
              ),
            ),
          ],
        ),
        SizedBox(
          height: Spacings.spacing40,
        ),
        SingleChildScrollView(
          child: Column(
            children: List.generate(3, (index) {
              return AppContainerComponent(
                padding: EdgeInsets.only(bottom: Spacings.spacing30),
                child: Row(
                  children: [
                    Image.asset(Pngs.bookIcon),
                    SizedBox(
                      width: Spacings.spacing16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Book Title",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: Spacings.spacing18,
                            color: AppColors.color35312D,
                          ),
                        ),
                        SizedBox(
                          height: Spacings.spacing2,
                        ),
                        Text(
                          "Tabish bin Tahir",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: Spacings.spacing12,
                            color: AppColors.color777779,
                          ),
                        ),
                        SizedBox(
                          height: Spacings.spacing8,
                        ),
                        Text(
                          "﹩75",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: Spacings.spacing20,
                            color: AppColors.color35312D,
                          ),
                        ),
                        SizedBox(
                          height: Spacings.spacing12,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(Svgs.cycle),
                            SizedBox(
                              width: Spacings.spacing6,
                            ),
                            Text(
                              "Buy Again",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: Spacings.spacing14,
                                color: AppColors.color43B888,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppContainerComponent(
                          borderColor: AppColors.color43B888,
                          borderRadius: Spacings.spacing30,
                          borderWidth: 1,
                          padding: EdgeInsets.symmetric(
                            vertical: Spacings.spacing6,
                            horizontal: Spacings.spacing14,
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset(Svgs.edit),
                              SizedBox(
                                width: Spacings.spacing8,
                              ),
                              Text(
                                "Edit",
                                style: TextStyle(
                                  fontSize: Spacings.spacing14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.color43B888,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Spacings.spacing50,
                        ),
                        SvgPicture.asset(Svgs.download),
                      ],
                    )
                  ],
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}
