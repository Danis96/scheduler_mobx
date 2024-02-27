import 'package:scheduler_mobx/app/providers/appointment_provider/appointment_provider.dart';
import 'package:scheduler_mobx/app/providers/login_provider/login_provider.dart';
import 'package:scheduler_mobx/app/providers/stupidity_provider/stupidity_provider.dart';

class ProfilePageArguments {
  ProfilePageArguments(this.appointmentProvider, this.loginProvider);

  final AppointmentProvider appointmentProvider;
  final LoginProvider loginProvider;
}

class SettingsPageArguments {
  SettingsPageArguments(this.appointmentProvider, this.loginProvider, this.stupidityProvider);

  final AppointmentProvider appointmentProvider;
  final LoginProvider loginProvider;
  final StupidityProvider stupidityProvider;
}
