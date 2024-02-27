import 'package:flutter/material.dart';
import 'package:scheduler_mobx/app/locator.dart';
import 'package:scheduler_mobx/app/stores/authentication_store/authentication_store.dart';

import '../../../routing/routes.dart';
import '../../../widgets/dialogs/simple_dialog.dart';
import '../../../widgets/loaders/loader_app_dialog.dart';
import '../language/language_strings.dart';

void showLogoutDialog(BuildContext context) => customSimpleDialog(
      context,
      buttonText: Language.hd_cancel,
      buttonTwoText: Language.common_ok,
      onButtonTwoPressed: () => logout(context),
      onButtonPressed: () => Navigator.of(context).pop(),
      title: Language.hd_title,
      content: Language.hd_content,
    );

void showDeleteDialog(BuildContext context) => customSimpleDialog(
      context,
      buttonText: Language.sh_delete_cancel,
      buttonTwoText: Language.common_ok,
      onButtonTwoPressed: () => delete(context),
      onButtonPressed: () => Navigator.of(context).pop(),
      title: Language.sh_delete_title,
      content: Language.sh_delete_subtitle,
    );



Future<void> logout(BuildContext context) async {
  final AuthenticationStore _auth = locator<AuthenticationStore>();
  customLoaderCircleWhite(context: context);
  await _auth.logoutFromFirebase().then((String? error) {
    Navigator.of(context).pop();
    if (error != null) {
      customSimpleDialog(context, title: Language.common_error, content: error, buttonText: Language.common_ok);
    } else {
      Navigator.of(context).pushNamedAndRemoveUntil(Login, arguments: false, (Route<dynamic> route) => false);
    }
  });
}

Future<void> delete(BuildContext context) async {
  final AuthenticationStore _auth = locator<AuthenticationStore>();
  customLoaderCircleWhite(context: context);
  await _auth.deleteUserAdmin().then((String? error) {
    Navigator.of(context).pop();
    if (error != null) {
      customSimpleDialog(context, title: Language.common_error, content: error, buttonText: Language.common_ok);
    } else {
      Navigator.of(context).pushNamedAndRemoveUntil(Login, (Route<dynamic> route) => false);
    }
  });
}
