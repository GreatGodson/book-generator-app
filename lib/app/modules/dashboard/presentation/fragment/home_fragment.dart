import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_assessment/app/modules/shared/presentation/components/app_container_component.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/framework/utils/colors.dart';
import '../../../../../core/framework/utils/images.dart';
import '../../../../../core/framework/utils/spacings.dart';

class HomeFragment extends StatelessWidget {
  HomeFragment({super.key});

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
                expandedHeight: 350,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    alignment: Alignment.center,
                    clipBehavior: Clip.none,
                    children: [
                      // Background Image with Fade & Subtle Scale Animation
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(Pngs.authBackground),
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
                              // Title Container with Slide & Fade
                              IntrinsicWidth(
                                child: AppContainerComponent(
                                  alignment: Alignment.center,
                                  color: AppColors.color43B888,
                                  borderRadius: Spacings.spacing6,
                                  padding: EdgeInsets.symmetric(
                                    vertical: Spacings.spacing2,
                                    horizontal: Spacings.spacing8,
                                  ),
                                  child: Text(
                                    "Daily Inspiration",
                                    style: TextStyle(
                                      fontSize: Spacings.spacing14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                                  .animate()
                                  .slideY(begin: 0.3, end: 0, duration: 800.ms)
                                  .fadeIn(duration: 800.ms, delay: 300.ms),

                              SizedBox(height: Spacings.spacing14),

                              // Subtitle Text with Fade-in
                              Text(
                                "Spending Time with Family",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: Spacings.spacing22,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                                  .animate()
                                  .fadeIn(duration: 1.seconds, delay: 600.ms),

                              SizedBox(height: Spacings.spacing30),

                              // Animated Horizontal Tabs
                              SizedBox(
                                width: double.maxFinite,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: List.generate(sliverItems.length,
                                        (index) {
                                      final tab = sliverItems[index];
                                      return ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: Spacings.spacing20,
                                            sigmaY: Spacings.spacing20,
                                          ),
                                          child: AppContainerComponent(
                                            constraints: const BoxConstraints(
                                              maxWidth: 130,
                                              minWidth: 120,
                                            ),
                                            borderRadius: Spacings.spacing8,
                                            margin: EdgeInsets.only(
                                              right: Spacings.spacing12,
                                            ),
                                            color:
                                                Colors.white.withOpacity(0.2),
                                            padding: EdgeInsets.symmetric(
                                              vertical: Spacings.spacing18,
                                              horizontal: Spacings.spacing16,
                                            ),
                                            child: Column(
                                              children: [
                                                SvgPicture.asset(tab.svgPath),
                                                SizedBox(
                                                    height: Spacings.spacing10),
                                                Text(
                                                  tab.title,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize:
                                                        Spacings.spacing14,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                          .animate()
                                          .fadeIn(
                                              duration: 800.ms,
                                              delay: (index * 150).ms)
                                          .slideX(
                                              begin: 0.7,
                                              end: 0,
                                              duration: 1.seconds);
                                    }),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                // Animated Menu Icon in AppBar
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.color43B888,
                      child: Icon(Icons.menu, color: Colors.white),
                    ).animate().scale(
                        begin: Offset(0.85, 0.85),
                        end: Offset(1, 1),
                        duration: 800.ms),
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
                        topRight: Radius.circular(Spacings.spacing20),
                      ),
                      color: Colors.white,
                    ),
                  ).animate().fadeIn(duration: 1.2.seconds),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(Svgs.quote),
                          SizedBox(
                            width: Spacings.spacing2,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: Spacings.spacing20,
                              ),
                              Text(
                                "William James",
                                style: TextStyle(
                                  color: AppColors.color292A2C,
                                  fontSize: Spacings.spacing16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Spacings.spacing12,
                      ),
                      Text(
                        "“The greatest purpose of life is to live it for something that last longer than you”",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.color292A2C,
                          fontSize: Spacings.spacing16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: Spacings.spacing38,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: AppContainerComponent(
                              color: AppColors.colorF6F6F7,
                              borderRadius: Spacings.spacing8,
                              child: Column(
                                children: [
                                  Image.asset(Pngs.book),
                                  SizedBox(
                                    height: Spacings.spacing14,
                                  ),
                                  Text(
                                    "Create a book",
                                    style: TextStyle(
                                      fontSize: Spacings.spacing16,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.color292A2C,
                                    ),
                                  ),
                                  SizedBox(
                                    height: Spacings.spacing8,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: Spacings.spacing22,
                                    ),
                                    child: Text(
                                      "Make a book with your favourite legacy questions or create your own",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: Spacings.spacing10,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.color777779,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: Spacings.spacing20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Spacings.spacing14,
                          ),
                          Expanded(
                            child: AppContainerComponent(
                              color: AppColors.colorF6F6F7,
                              borderRadius: Spacings.spacing8,
                              child: Column(
                                children: [
                                  Image.asset(Pngs.books),
                                  SizedBox(
                                    height: Spacings.spacing14,
                                  ),
                                  Text(
                                    "Create a book",
                                    style: TextStyle(
                                      fontSize: Spacings.spacing16,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.color292A2C,
                                    ),
                                  ),
                                  SizedBox(
                                    height: Spacings.spacing8,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: Spacings.spacing22,
                                    ),
                                    child: Text(
                                      "Make a book with your favourite legacy questions or create your own",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: Spacings.spacing10,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.color777779,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: Spacings.spacing20,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: Spacings.spacing40,
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
                        ],
                      ),
                      SizedBox(
                        height: Spacings.spacing40,
                      ),
                      Row(
                        children: [
                          Text(
                            "Most Popular Questions",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: Spacings.spacing18,
                              color: AppColors.color292A2C,
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
                          children:
                              List.generate(questionItems.length, (index) {
                            final items = questionItems[index];
                            return AppContainerComponent(
                              padding: EdgeInsets.only(
                                right: Spacings.spacing16,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(items.imagePath),
                                  SizedBox(
                                    height: Spacings.spacing12,
                                  ),
                                  Text(
                                    items.title,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: Spacings.spacing16,
                                      color: AppColors.color292A2C,
                                    ),
                                  ),
                                  SizedBox(
                                    height: Spacings.spacing2,
                                  ),
                                  Text(
                                    items.description,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: Spacings.spacing12,
                                      color: AppColors.color777779,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                        ),
                      ),
                      SizedBox(
                        height: Spacings.spacing38,
                      ),
                      Row(
                        children: [
                          Text(
                            "Get inspired by others",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: Spacings.spacing18,
                              color: AppColors.color292A2C,
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
                                      child: Image.asset(Pngs.person),
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
                                      "Likes",
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
                                      "Shares",
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
                                      child: Image.asset(Pngs.person),
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
                                      "Likes",
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
                                      "Shares",
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
                        height: Spacings.spacing40,
                      ),
                      Row(
                        children: [
                          Text(
                            "Weekly Legacy Challenges",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: Spacings.spacing18,
                              color: AppColors.color292A2C,
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
                          children: List.generate(3, (index) {
                            return AppContainerComponent(
                              padding: EdgeInsets.only(
                                right: Spacings.spacing12,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(Pngs.parentingLong),
                                  SizedBox(
                                    height: Spacings.spacing12,
                                  ),
                                  Text(
                                    "Family Exploration",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: Spacings.spacing16,
                                      color: AppColors.color292A2C,
                                    ),
                                  ),
                                  SizedBox(
                                    height: Spacings.spacing4,
                                  ),
                                  Text(
                                    "Ask three family members",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: Spacings.spacing12,
                                      color: AppColors.color777779,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                        ),
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
      ],
    );
  }
}

class HomeScreenItems {
  HomeScreenItems({
    required this.title,
    required this.svgPath,
  });

  final String title;
  final String svgPath;

  static List<HomeScreenItems> items = [
    HomeScreenItems(title: "Questions", svgPath: Svgs.questions),
    HomeScreenItems(title: "Challenges", svgPath: Svgs.challenges),
    HomeScreenItems(title: "Books", svgPath: Svgs.books),
    HomeScreenItems(title: "Assets", svgPath: Svgs.assets),
    HomeScreenItems(title: "Community", svgPath: Svgs.community),
    HomeScreenItems(title: "Family", svgPath: Svgs.family),
  ];
}

class QuestionTopicItem {
  QuestionTopicItem({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  final String title;
  final String description;
  final String imagePath;

  static final List<QuestionTopicItem> items = [
    QuestionTopicItem(
      title: "Parenting",
      description: "30 Questions",
      imagePath: Pngs.parentingBig,
    ),
    QuestionTopicItem(
      title: "Vocational",
      description: "30 Questions",
      imagePath: Pngs.vocationBig,
    ),
    QuestionTopicItem(
      title: "Educational",
      description: "30 Questions",
      imagePath: Pngs.educationBig,
    ),
    QuestionTopicItem(
      title: "Parenting",
      description: "30 Questions",
      imagePath: Pngs.parentingBig,
    ),
  ];
}
