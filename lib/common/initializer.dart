import 'package:flutter/services.dart';
import 'package:get/get.dart';

abstract class Initializer {
  static void init(VoidCallback runApp) {

  }

  static void _initScreenPreference() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}

class InitialBindings extends Bindings {
  @override
  void dependencies() {
  }
}
