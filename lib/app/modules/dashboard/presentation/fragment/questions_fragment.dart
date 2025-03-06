import 'package:flutter/material.dart';
import 'package:flutter_assessment/app/modules/shared/presentation/components/app_container_component.dart';

import '../../../../../core/framework/utils/colors.dart';
import '../../../../../core/framework/utils/images.dart';
import '../../../../../core/framework/utils/spacings.dart';
import '../../../shared/presentation/components/text_field_component.dart';
import 'home_fragment.dart';

class QuestionsFragment extends StatelessWidget {
  QuestionsFragment({super.key});

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
                      children: [
                        AppContainerComponent(),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
