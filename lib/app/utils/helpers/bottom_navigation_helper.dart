import 'package:flutter/material.dart';
import 'package:scheduler_mobx/app/view/history_page/history_page.dart';
import 'package:scheduler_mobx/app/view/profile_page/profile_page.dart';

import '../../../widgets/bottom_navigation_bar/custom_bottom_navigation_bar.dart';
import '../../view/bottom_navigation_bar/bottom_navigation_page.dart';
import '../../view/home_page/home_page.dart';

class BottomNavigationHelper {
  List<CustomBottomNavigationItem> bottomNavigationItems() => <CustomBottomNavigationItem>[
        CustomBottomNavigationItem(
            title: 'Schedule', icon: Icons.format_list_bulleted_rounded, page: HistoryPage(isFromBottom: true)),
        CustomBottomNavigationItem(title: 'Home', icon: Icons.home, page: const Homepage()),
        CustomBottomNavigationItem(title: 'Profile', icon: Icons.person, page: const ProfilePage(isFromBottom: true)),
      ];

  void selectNavigationItem(BuildContext context, int item) {
    final BottomNavigationBar navigationBar = bottomWidgetKey.currentWidget as BottomNavigationBar;
    navigationBar.onTap!(item);
  }
}
