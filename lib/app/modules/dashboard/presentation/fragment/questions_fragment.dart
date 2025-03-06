import 'package:flutter/material.dart';
import 'package:flutter_assessment/app/modules/shared/presentation/components/app_container_component.dart';
import 'package:flutter_assessment/app/modules/shared/presentation/components/button_component.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/framework/utils/colors.dart';
import '../../../../../core/framework/utils/images.dart';
import '../../../../../core/framework/utils/spacings.dart';
import '../../../shared/presentation/components/text_field_component.dart';

class QuestionsFragment extends StatefulWidget {
  QuestionsFragment({super.key});

  @override
  State<QuestionsFragment> createState() => _QuestionsFragmentState();
}

class _QuestionsFragmentState extends State<QuestionsFragment> {
  final List<String> questionTypes = [
    "All",
    "Parenting",
    "Educational",
    "Vocational",
  ];

  String _selectedQuestionType = "All";

  void updateType(String selected) {
    _selectedQuestionType = selected;
    setState(() {});
  }

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
                expandedHeight: 230,
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
                        // left: 10,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: Spacings.spacing18,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Questions",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: Spacings.spacing22,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: Spacings.spacing24,
                                ),
                                TextFieldComponent(
                                  hint: "Search here",
                                  suffix: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(Svgs.bars),
                                    ],
                                  ),
                                  prefix: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(Svgs.search),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:
                              List.generate(questionTypes.length, (index) {
                            final item = questionTypes[index];
                            return AppContainerComponent(
                              onTap: () {
                                updateType(item);
                              },
                              margin: EdgeInsets.only(
                                right: Spacings.spacing8,
                              ),
                              padding: EdgeInsets.symmetric(
                                vertical: Spacings.spacing8,
                                horizontal: Spacings.spacing18,
                              ),
                              borderRadius: Spacings.spacing30,
                              color: _selectedQuestionType == item
                                  ? AppColors.color43B888
                                  : AppColors.colorF6F6F7,
                              child: Text(
                                item,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: Spacings.spacing14,
                                  color: _selectedQuestionType == item
                                      ? Colors.white
                                      : AppColors.color777779,
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      SizedBox(
                        height: Spacings.spacing20,
                      ),
                      AppContainerComponent(
                        alignment: AlignmentDirectional.topStart,
                        borderColor: AppColors.color43B888,
                        borderRadius: Spacings.spacing8,
                        borderWidth: 1,
                        padding: EdgeInsets.symmetric(
                          vertical: Spacings.spacing14,
                          horizontal: Spacings.spacing20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Question 1  |  Topic ",
                              style: TextStyle(
                                fontSize: Spacings.spacing16,
                                fontWeight: FontWeight.w400,
                                color: AppColors.color777779,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            SizedBox(
                              height: Spacings.spacing10,
                            ),
                            Text(
                              "How would you describe our family’s humour as if to a stranger?",
                              style: TextStyle(
                                fontSize: Spacings.spacing16,
                                fontWeight: FontWeight.w400,
                                color: AppColors.color35312D,
                              ),
                            ),
                            SizedBox(
                              height: Spacings.spacing10,
                            ),
                            Row(
                              children: [
                                AppContainerComponent(
                                  color: AppColors.colorF6F6F7,
                                  borderRadius: Spacings.spacing30,
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
                                  width: Spacings.spacing6,
                                ),
                                AppContainerComponent(
                                  padding: EdgeInsets.symmetric(
                                    vertical: Spacings.spacing6,
                                    horizontal: Spacings.spacing14,
                                  ),
                                  color: AppColors.colorFB056C,
                                  borderRadius: Spacings.spacing30,
                                  child: Text(
                                    "Delete",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: Spacings.spacing14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Spacings.spacing30,
                      ),
                      AppContainerComponent(
                        color: AppColors.colorF6F6F7,
                        alignment: AlignmentDirectional.topStart,
                        borderRadius: Spacings.spacing8,
                        padding: EdgeInsets.symmetric(
                          vertical: Spacings.spacing14,
                          horizontal: Spacings.spacing20,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: Spacings.spacing16,
                                  backgroundColor: Colors.white,
                                  child: SvgPicture.asset(
                                    Svgs.personIcon,
                                    height: Spacings.spacing24,
                                  ),
                                ),
                                SizedBox(
                                  width: Spacings.spacing10,
                                ),
                                Text(
                                  "Tabish Bin Tahir",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: Spacings.spacing14,
                                    color: AppColors.color292A2C,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: Spacings.spacing8,
                            ),
                            Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown.",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: Spacings.spacing14,
                                color: AppColors.color777779,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Spacings.spacing12,
                      ),
                      TextFieldComponent(
                        hint: "Type here or hold mic to speak",
                        suffix: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: AppColors.color43B888,
                              child: SvgPicture.asset(Svgs.mic),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Spacings.spacing10,
                      ),
                      ButtonComponent(
                        expanded: true,
                        text: "Add Answer",
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: Spacings.spacing22,
                      ),
                      AppContainerComponent(
                        alignment: AlignmentDirectional.topStart,
                        borderColor: AppColors.colorE4E4EB,
                        borderRadius: Spacings.spacing8,
                        borderWidth: 1,
                        padding: EdgeInsets.symmetric(
                          vertical: Spacings.spacing14,
                          horizontal: Spacings.spacing20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Question 1  |  Topic ",
                              style: TextStyle(
                                fontSize: Spacings.spacing16,
                                fontWeight: FontWeight.w400,
                                color: AppColors.color777779,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            SizedBox(
                              height: Spacings.spacing10,
                            ),
                            Text(
                              "How would you describe our family’s humour as if to a stranger?",
                              style: TextStyle(
                                fontSize: Spacings.spacing16,
                                fontWeight: FontWeight.w400,
                                color: AppColors.color35312D,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Spacings.spacing12,
                      ),
                      AppContainerComponent(
                        alignment: AlignmentDirectional.topStart,
                        borderColor: AppColors.colorE4E4EB,
                        borderRadius: Spacings.spacing8,
                        borderWidth: 1,
                        padding: EdgeInsets.symmetric(
                          vertical: Spacings.spacing14,
                          horizontal: Spacings.spacing20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Question 1  |  Topic ",
                              style: TextStyle(
                                fontSize: Spacings.spacing16,
                                fontWeight: FontWeight.w400,
                                color: AppColors.color777779,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            SizedBox(
                              height: Spacings.spacing10,
                            ),
                            Text(
                              "How would you describe our family’s humour as if to a stranger?",
                              style: TextStyle(
                                fontSize: Spacings.spacing16,
                                fontWeight: FontWeight.w400,
                                color: AppColors.color35312D,
                              ),
                            ),
                          ],
                        ),
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
