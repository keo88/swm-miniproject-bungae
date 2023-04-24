import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:swm_miniproject_flutter/common/initializer.dart';
import 'package:swm_miniproject_flutter/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, __) => GetMaterialApp(
        // title: Strings.appName,
        debugShowCheckedModeBanner: false,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        initialBinding: InitialBindings(),
        builder: (_, child) => child ?? const SizedBox.shrink(),
      ),
    );
  }
}
