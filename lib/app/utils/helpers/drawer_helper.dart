import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scheduler_mobx/app/utils/language/language_strings.dart';
import 'package:scheduler_mobx/widgets/drawer_list_item/custom_drawer_list_item.dart';

import '../../../routing/routes.dart';
import '../../../theme/color_helper.dart';

class DrawerHelper {
  List<DrawerListItem> drawerListItems(BuildContext context) {
    return <DrawerListItem>[
      DrawerListItem(
        title: Language.dr_item_home,
        routeName: Home,
        iconData: Icons.home,
        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: ColorHelper.towerRed.color),
      ),
      DrawerListItem(
        title: Language.dr_item_new,
        routeName: NewAppointment,
        iconData: Icons.assistant,
        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: ColorHelper.towerRed.color),
      ),
      DrawerListItem(
        title: Language.dr_item_up,
        routeName: Notifications,
        iconData: Icons.schedule,
        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: ColorHelper.towerRed.color),
      ),
      DrawerListItem(
        title: Language.dr_item_favorite,
        routeName: Favorites,
        iconData: Icons.favorite_border,
        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: ColorHelper.towerRed.color),
      ),
      DrawerListItem(
        title: Language.dr_item_history,
        routeName: History,
        iconData: Icons.manage_history,
        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: ColorHelper.towerRed.color),
      ),
      DrawerListItem(
        title: Language.dr_item_settings,
        iconData: Icons.settings,
        routeName: Settings,
        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: ColorHelper.towerRed.color),
      ),
    ];
  }
}
