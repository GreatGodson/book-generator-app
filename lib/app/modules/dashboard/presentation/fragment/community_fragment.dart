import 'package:flutter/material.dart';
import 'package:flutter_assessment/app/modules/shared/presentation/components/button_component.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/framework/utils/colors.dart';
import '../../../../../core/framework/utils/images.dart';
import '../../../../../core/framework/utils/spacings.dart';
import '../../../shared/presentation/components/app_container_component.dart';
import 'home_fragment.dart';

class CommunityFragment extends StatelessWidget {
  CommunityFragment({super.key});

  final List<HomeScreenItems> sliverItems = HomeScreenItems.items;
  final List<QuestionTopicItem> questionItems = QuestionTopicItem.items;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                toolbarHeight: 70,
                pinned: true,
                backgroundColor: AppColors.color43B888.withOpacity(0.1),
                expandedHeight: 200,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    alignment: Alignment.center,
                    clipBehavior: Clip.none,
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
                        bottom: 60,
                        left: 10,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Welcome to your community",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: Spacings.spacing22,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.color43B888,
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                  ],
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: ButtonComponent(
                              verticalPadding: Spacings.spacing10,
                              expanded: true,
                              text: "Community ",
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(
                            width: Spacings.spacing10,
                          ),
                          Expanded(
                            child: ButtonComponent(
                              verticalPadding: Spacings.spacing10,
                              expanded: true,
                              text: "Family",
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Spacings.spacing30,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: List.generate(2, (index) {
                                      return AppContainerComponent(
                                        borderRadius: Spacings.spacing8,
                                        margin: EdgeInsets.only(
                                          right: Spacings.spacing10,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          vertical: Spacings.spacing14,
                                          horizontal: Spacings.spacing18,
                                        ),
                                        color: AppColors.colorF6F6F7,
                                        child: Column(
                                          children: [
                                            Text(
                                              "Community",
                                              style: TextStyle(
                                                fontSize: Spacings.spacing12,
                                                fontWeight: FontWeight.w600,
                                                color: AppColors.color35312D,
                                              ),
                                            ),
                                            SizedBox(
                                              height: Spacings.spacing16,
                                            ),
                                            SvgPicture.asset(
                                              Svgs.community,
                                              colorFilter: ColorFilter.mode(
                                                  AppColors.color777779,
                                                  BlendMode.srcIn),
                                            ),
                                            SizedBox(
                                              height: Spacings.spacing16,
                                            ),
                                            Text(
                                              index == 1
                                                  ? "Inspire Others"
                                                  : "Get inspired",
                                              style: TextStyle(
                                                fontSize: Spacings.spacing12,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.color777779,
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: List.generate(2, (index) {
                                      return AppContainerComponent(
                                        borderRadius: Spacings.spacing8,
                                        margin: EdgeInsets.only(
                                          right: Spacings.spacing10,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          vertical: Spacings.spacing14,
                                          horizontal: Spacings.spacing18,
                                        ),
                                        color: AppColors.colorF6F6F7,
                                        child: Column(
                                          children: [
                                            Text(
                                              "Family",
                                              style: TextStyle(
                                                fontSize: Spacings.spacing12,
                                                fontWeight: FontWeight.w600,
                                                color: AppColors.color35312D,
                                              ),
                                            ),
                                            SizedBox(
                                              height: Spacings.spacing16,
                                            ),
                                            SvgPicture.asset(
                                              Svgs.family,
                                              colorFilter: ColorFilter.mode(
                                                  AppColors.color777779,
                                                  BlendMode.srcIn),
                                            ),
                                            SizedBox(
                                              height: Spacings.spacing16,
                                            ),
                                            Text(
                                              index == 1
                                                  ? "View Family"
                                                  : "Add Family",
                                              style: TextStyle(
                                                fontSize: Spacings.spacing12,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.color777779,
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Spacings.spacing18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Get inspired by others",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: Spacings.spacing18,
                              color: AppColors.color292A2C,
                            ),
                          ),
                          Text(
                            "View",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: Spacings.spacing12,
                              color: AppColors.color43B888,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Spacings.spacing30,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  alignment: Alignment.bottomLeft,
                                  clipBehavior: Clip.none,
                                  children: [
                                    Image.asset(Pngs.parentingBiggest),
                                    Positioned(
                                      bottom: -20,
                                      left: 20,
                                      child: CircleAvatar(
                                        backgroundColor: AppColors.colorF8F9FA,
                                        child:
                                            SvgPicture.asset(Svgs.personIcon),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: Spacings.spacing32,
                                ),
                                Text(
                                  "Parenting Inspiration",
                                  style: TextStyle(
                                    fontSize: Spacings.spacing14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.color292A2C,
                                  ),
                                ),
                                SizedBox(
                                  height: Spacings.spacing6,
                                ),
                                Text(
                                  "Question for every parent\nneeding help...",
                                  style: TextStyle(
                                    fontSize: Spacings.spacing14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.color292A2C,
                                  ),
                                ),
                                SizedBox(
                                  height: Spacings.spacing14,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(Svgs.family),
                                    SizedBox(
                                      width: Spacings.spacing6,
                                    ),
                                    Text(
                                      "13 Likes",
                                      style: TextStyle(
                                        fontSize: Spacings.spacing14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.color292A2C,
                                      ),
                                    ),
                                    SizedBox(
                                      width: Spacings.spacing22,
                                    ),
                                    SvgPicture.asset(Svgs.share),
                                    SizedBox(
                                      width: Spacings.spacing6,
                                    ),
                                    Text(
                                      "12 Shares",
                                      style: TextStyle(
                                        fontSize: Spacings.spacing14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.color292A2C,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: Spacings.spacing12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  alignment: Alignment.bottomLeft,
                                  clipBehavior: Clip.none,
                                  children: [
                                    Image.asset(Pngs.parentingBiggest),
                                    Positioned(
                                      bottom: -20,
                                      left: 20,
                                      child: CircleAvatar(
                                        backgroundColor: AppColors.colorF8F9FA,
                                        child:
                                            SvgPicture.asset(Svgs.personIcon),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: Spacings.spacing32,
                                ),
                                Text(
                                  "Parenting Inspiration",
                                  style: TextStyle(
                                    fontSize: Spacings.spacing14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.color292A2C,
                                  ),
                                ),
                                SizedBox(
                                  height: Spacings.spacing6,
                                ),
                                Text(
                                  "Question for every parent\nneeding help...",
                                  style: TextStyle(
                                    fontSize: Spacings.spacing14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.color292A2C,
                                  ),
                                ),
                                SizedBox(
                                  height: Spacings.spacing14,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(Svgs.family),
                                    SizedBox(
                                      width: Spacings.spacing6,
                                    ),
                                    Text(
                                      "13 Likes",
                                      style: TextStyle(
                                        fontSize: Spacings.spacing14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.color292A2C,
                                      ),
                                    ),
                                    SizedBox(
                                      width: Spacings.spacing22,
                                    ),
                                    SvgPicture.asset(Svgs.share),
                                    SizedBox(
                                      width: Spacings.spacing6,
                                    ),
                                    Text(
                                      "12 Shares",
                                      style: TextStyle(
                                        fontSize: Spacings.spacing14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.color292A2C,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Spacings.spacing28,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Questions by topic",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: Spacings.spacing18,
                                  color: AppColors.color292A2C,
                                ),
                              ),
                            ],
                          ),
                          GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 20,
                              childAspectRatio: 2,
                              mainAxisExtent: 50,
                            ),
                            itemCount: questionItems.length,
                            itemBuilder: (context, index) {
                              final item = questionItems[index];
                              return AppContainerComponent(
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    Image.asset(item.imagePath),
                                    SizedBox(
                                      width: Spacings.spacing12,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item.title,
                                          style: TextStyle(
                                            fontSize: Spacings.spacing16,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.color292A2C,
                                          ),
                                        ),
                                        SizedBox(
                                          height: Spacings.spacing2,
                                        ),
                                        Text(
                                          item.description,
                                          style: TextStyle(
                                            fontSize: Spacings.spacing12,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.color777779,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            height: Spacings.spacing40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Family Members",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: Spacings.spacing18,
                                  color: AppColors.color292A2C,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Spacings.spacing36,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: AppContainerComponent(
                                  alignment: Alignment.center,
                                  borderRadius: Spacings.spacing8,
                                  constraints: BoxConstraints(
                                    maxHeight: 200,
                                    minHeight: 200,
                                  ),
                                  margin: EdgeInsets.only(
                                    right: Spacings.spacing10,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    vertical: Spacings.spacing14,
                                    horizontal: Spacings.spacing10,
                                  ),
                                  color: AppColors.colorF6F6F7,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(Svgs.addFamily),
                                      SizedBox(
                                        height: Spacings.spacing16,
                                      ),
                                      Text(
                                        "Add Family",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: Spacings.spacing14,
                                          color: AppColors.color35312D,
                                        ),
                                      ),
                                      SizedBox(
                                        height: Spacings.spacing8,
                                      ),
                                      Text(
                                        "Add family members and then lag the questions you want them to answer",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: Spacings.spacing14,
                                          color: AppColors.color777779,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: AppContainerComponent(
                                  alignment: Alignment.center,
                                  constraints: BoxConstraints(
                                    maxHeight: 200,
                                    minHeight: 200,
                                  ),
                                  borderRadius: Spacings.spacing8,
                                  margin: EdgeInsets.only(
                                    right: Spacings.spacing10,
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    vertical: Spacings.spacing14,
                                    horizontal: Spacings.spacing18,
                                  ),
                                  color: AppColors.colorF6F6F7,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(Svgs.viewFamily),
                                      SizedBox(
                                        height: Spacings.spacing16,
                                      ),
                                      Text(
                                        "View all Family",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: Spacings.spacing14,
                                          color: AppColors.color35312D,
                                        ),
                                      ),
                                      SizedBox(
                                        height: Spacings.spacing8,
                                      ),
                                      Text(
                                        "Check out all the family members you have added",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: Spacings.spacing14,
                                          color: AppColors.color777779,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
