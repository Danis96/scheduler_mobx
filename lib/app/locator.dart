import 'package:get_it/get_it.dart';
import 'package:scheduler_mobx/app/repositories/navigation_repo.dart';
import 'package:scheduler_mobx/app/stores/appointment_store/appointment_store.dart';
import 'package:scheduler_mobx/app/stores/authentication_store/authentication_store.dart';
import 'package:scheduler_mobx/app/stores/splash_store/splash_store.dart';
import 'package:scheduler_mobx/app/stores/stupidity_store/stupidity_store.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationRepo());
  // register stores
  locator.registerLazySingleton(() => SplashStore());
  locator.registerLazySingleton(() => StupidityStore());
  locator.registerLazySingleton(() => AuthenticationStore());
  locator.registerLazySingleton(() => AppointmentStore());
}