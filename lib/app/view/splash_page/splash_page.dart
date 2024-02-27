import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:scheduler_mobx/app/locator.dart';
import 'package:scheduler_mobx/app/stores/splash_store/splash_store.dart';

import '../../../theme/color_helper.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late final SplashStore? store;

  @override
  void initState() {
    store = locator<SplashStore>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (bool f) async => false,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Container(
                color: ColorHelper.mercury.color, child: const Center(child: SpinKitWaveSpinner(size: 80.0, color: Colors.white))),
          ),
        ),
      ),
    );
  }
}
