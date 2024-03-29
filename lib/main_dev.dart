import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:scheduler_mobx/app/utils/constants/constants.dart';
import 'package:scheduler_mobx/env/env.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'app/MyApp.dart';
import 'app/locator.dart';
import 'app/utils/storage_manager/storage_prefs_manager.dart';
import 'config/flavor_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  await storagePrefs.init();
  await firebaseInitialize();
  FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  // Pass all uncaught errors from the framework to Crashlytics.
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  FlavorConfig(flavor: Flavor.DEV, values: FlavorValues(appName: AppName.APP_NAME));
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[DeviceOrientation.portraitUp]).then((_) async {
    setupLocator();
    WidgetsFlutterBinding.ensureInitialized();
    await SentryFlutter.init(
      (SentryFlutterOptions options) {
        options.dsn = Env.sentryDSN;
        options.tracesSampleRate = 1.0;
      },
      appRunner: () => runApp(MyApp()),
    );
  }, onError: onCrash);
}

Future<void> firebaseInitialize() async {
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: Env.firebaseApiKey!,
      appId: Env.firebaseAppId!,
      messagingSenderId: Env.messagingSenderId!,
      projectId: Env.firebaseProjectId!,
      storageBucket: Env.firebaseStorageBucket!,
    ),
  ).then((FirebaseApp value) => print('Firebase Initialize ${DateTime.now().toString().split(' ')[0]}'));
}

// A new function callback when a crash occurs.
void onCrash(Object exception, StackTrace stackTrace) {
  // Prints the exception and the stack trace locally
  print(exception);
  print(stackTrace);
  // Send the strack trace to Crashlytics and Sentry
  FirebaseCrashlytics.instance.recordError(exception, stackTrace);
  Sentry.captureException(exception, stackTrace: stackTrace);
}
