import 'package:flutter/material.dart';
import 'package:flutter_assessment/app/modules/shared/presentation/components/app_container_component.dart';
import 'package:flutter_assessment/app/modules/shared/presentation/components/button_component.dart';

import '../../../../../core/framework/utils/colors.dart';
import '../../../../../core/framework/utils/images.dart';
import '../../../../../core/framework/utils/spacings.dart';
import '../../../shared/presentation/components/text_field_component.dart';
import 'home_fragment.dart';

class QuestionsFragment extends StatelessWidget {
  QuestionsFragment({super.key});

  final List<HomeScreenItems> sliverItems = HomeScreenItems.items;
  final List<QuestionTopicItem> questionItems = QuestionTopicItem.items;
  final List<String> questionTypes = [
    "All",
    "Parenting",
    "Educational",
    "Vocational",
  ];

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
                              margin: EdgeInsets.only(
                                right: Spacings.spacing8,
                              ),
                              padding: EdgeInsets.symmetric(
                                vertical: Spacings.spacing8,
                                horizontal: Spacings.spacing18,
                              ),
                              borderRadius: Spacings.spacing30,
                              color: AppColors.color43B888,
                              child: Text(
                                item,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: Spacings.spacing14,
                                  color: Colors.white,
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
                            Text("Question 1  |  Topic "),
                            SizedBox(
                              height: Spacings.spacing10,
                            ),
                            Text(
                              "How would you describe our family’s humour as if to a stranger?",
                            ),
                            SizedBox(
                              height: Spacings.spacing10,
                            ),
                            Row(
                              children: [],
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
                                CircleAvatar(),
                                SizedBox(
                                  width: Spacings.spacing10,
                                ),
                                Text("Tabish Bin Tahir"),
                              ],
                            ),
                            SizedBox(
                              height: Spacings.spacing8,
                            ),
                            Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown.",
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Spacings.spacing12,
                      ),
                      TextFieldComponent(
                        hint: "Type here or hold mic to speak",
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
                            Text("Question 1  |  Topic "),
                            SizedBox(
                              height: Spacings.spacing10,
                            ),
                            Text(
                                "How would you describe our family’s humour as if to a stranger?"),
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
                            Text("Question 1  |  Topic "),
                            SizedBox(
                              height: Spacings.spacing10,
                            ),
                            Text(
                                "How would you describe our family’s humour as if to a stranger?"),
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
