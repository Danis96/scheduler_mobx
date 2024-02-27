import 'package:scheduler_mobx/app/providers/appointment_provider/appointment_provider.dart';
import 'package:scheduler_mobx/app/providers/login_provider/login_provider.dart';
import 'package:scheduler_mobx/app/utils/language/language_strings.dart';
import 'package:scheduler_mobx/generated/assets.dart';
import 'package:scheduler_mobx/routing/route_arguments.dart';
import 'package:scheduler_mobx/routing/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'dialog_helper.dart';

class SettingsItemModel {
  SettingsItemModel({this.title = '', this.icon = '', this.route, this.hideIconArrow = false, this.arguments, this.function});

  final String title;
  final String icon;
  final String? route;
  final bool hideIconArrow;
  final dynamic arguments;
  final Function? function;
}


List<SettingsItemModel> settingsItemsGeneral(BuildContext context) => <SettingsItemModel>[
      SettingsItemModel(
          title: Language.sh_profile,
          icon: Assets.assetsProfile,
          route: Profile,
          arguments: ProfilePageArguments(context.read<AppointmentProvider>(), context.read<LoginProvider>())),
      SettingsItemModel(
          title: Language.sh_change, icon: Assets.assetsPassword, route: ChangePassword, arguments: context.read<LoginProvider>()),
    ];

List<SettingsItemModel> settingsItemsFeedback(BuildContext context) => <SettingsItemModel>[
      SettingsItemModel(title: Language.sh_bug, icon: Assets.assetsBug),
      SettingsItemModel(title: Language.sh_feedback, icon: Assets.assetsFeedback),
    ];

List<SettingsItemModel> settingsItemsOther(BuildContext context) => <SettingsItemModel>[
      SettingsItemModel(
          title: Language.sh_logout, icon: Assets.assetsLogout, hideIconArrow: true, function: () => showLogoutDialog(context)),
      SettingsItemModel(
          title: Language.sh_delete, icon: Assets.assetsDelete, hideIconArrow: true, function: () => showDeleteDialog(context)),
    ];
