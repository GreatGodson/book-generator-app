import 'package:flutter/material.dart';
import 'package:flutter_assessment/core/framework/utils/colors.dart';
import 'package:flutter_assessment/core/framework/utils/images.dart';
import 'package:flutter_assessment/core/framework/utils/spacings.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../fragment/community_fragment.dart';
import '../fragment/home_fragment.dart';
import '../fragment/me_fragment.dart';
import '../fragment/purchase_fragment.dart';
import '../fragment/questions_fragment.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeFragment(),
    QuestionsFragment(),
    CommunityFragment(),
    PurchaseFragment(),
    MeFragment(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.color43B888,
        unselectedItemColor: AppColors.color777779,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: Spacings.spacing12,
          color: AppColors.color292A2C,
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: Spacings.spacing12,
          color: AppColors.color777779,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_outline),
            label: 'Questions',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              Svgs.community,
              colorFilter:
                  ColorFilter.mode(AppColors.color777779, BlendMode.srcIn),
            ),
            activeIcon: SvgPicture.asset(Svgs.community),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              Svgs.purchases,
            ),
            activeIcon: SvgPicture.asset(
              Svgs.purchases,
              colorFilter: ColorFilter.mode(
                AppColors.color43B888,
                BlendMode.srcIn,
              ),
            ),
            label: 'Purchases',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Svgs.personIcon),
            activeIcon: SvgPicture.asset(
              Svgs.personIcon,
              colorFilter: ColorFilter.mode(
                AppColors.color43B888,
                BlendMode.srcIn,
              ),
            ),
            label: 'Me',
          ),
        ],
      ),
    );
  }
}
