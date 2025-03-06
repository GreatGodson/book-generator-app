import 'package:flutter/material.dart';
import 'package:flutter_assessment/app/modules/shared/presentation/components/app_container_component.dart';
import 'package:flutter_assessment/app/modules/shared/presentation/pages/app_wrapper.dart';
import 'package:flutter_assessment/core/framework/utils/colors.dart';
import 'package:flutter_assessment/core/framework/utils/images.dart';
import 'package:flutter_assessment/core/framework/utils/spacings.dart';

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
                        Text("Book Title"),
                        SizedBox(
                          height: Spacings.spacing2,
                        ),
                        Text("Tabish bin Tahir"),
                        SizedBox(
                          height: Spacings.spacing8,
                        ),
                        Text("﹩75"),
                        SizedBox(
                          height: Spacings.spacing12,
                        ),
                        Row(
                          children: [
                            Icon(Icons.recycling),
                            SizedBox(
                              width: Spacings.spacing6,
                            ),
                            Text("Buy Again"),
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
                            vertical: Spacings.spacing10,
                            horizontal: Spacings.spacing14,
                          ),
                          child: Text("Edit"),
                        ),
                        SizedBox(
                          height: Spacings.spacing50,
                        ),
                        Icon(Icons.install_desktop),
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
