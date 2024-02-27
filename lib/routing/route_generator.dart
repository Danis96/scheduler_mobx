import 'package:flutter/material.dart';
import 'package:scheduler_mobx/app/view/bottom_navigation_bar/bottom_navigation_page.dart';
import 'package:scheduler_mobx/app/view/change_password_page/change_password_page.dart';
import 'package:scheduler_mobx/app/view/edit_page/edit_page.dart';
import 'package:scheduler_mobx/app/view/favorites_page/favorites_page.dart';
import 'package:scheduler_mobx/app/view/forgot_password_page/forgot_password_page.dart';
import 'package:scheduler_mobx/app/view/history_page/history_page.dart';
import 'package:scheduler_mobx/app/view/notification_page/notification_page.dart';
import 'package:scheduler_mobx/app/view/profile_page/profile_page.dart';
import 'package:scheduler_mobx/app/view/register_page/register_page.dart';
import 'package:scheduler_mobx/app/view/settings_page/settings_page.dart';

import '../app/utils/navigation_animations.dart';
import '../app/view/add_new_appointment_page/add_new_appointment.dart';
import '../app/view/appointment_details_page/appointment_details.dart';
import '../app/view/login_page/login_page.dart';
import '../app/view/splash_page/splash_page.dart';
import '../routing/routes.dart';

mixin RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Splash:
        return SlideAnimationTween(widget: SplashPage());
      case Login:
        return SlideAnimationTween(widget: LoginPage(isFromRegister: settings.arguments as bool));
      case Register:
        return SlideAnimationTween(widget: RegisterPage());
      case Home:
        return SlideAnimationTween(widget: const BottomNavigationPage(initial: 1));
      case NewAppointment:
        return SlideAnimationTween(widget: NewAppointmentPage());
      case AppointmentDetails:
        return SlideAnimationTween(widget: AppointmentDetailsPage());
      case Notifications:
        return SlideAnimationTween(widget: NotificationPage());
      case EditAppointment:
        return SlideAnimationTween(widget: EditPage());
      case Profile:
        return SlideAnimationTween(widget: const ProfilePage());
      case Settings:
        return SlideAnimationTween(widget: const SettingsPage());
      case ChangePassword:
        return SlideAnimationTween(widget: ChangePasswordPage());
      case ForgotPassword:
        return SlideAnimationTween(widget: ForgotPasswordPage());
      case History:
        return SlideAnimationTween(widget: HistoryPage());
      case Favorites:
        return SlideAnimationTween(widget: FavoritesPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute<void>(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: Center(
          child: Container(
            child: const Text('Error Screen'),
          ),
        ),
      );
    });
  }
}
