// ignore_for_file: prefer_const_constructors
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:celebrazioni/routes/router.dart';
import 'package:celebrazioni/theme/theme_helper.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      // enabled: true,
      builder: (BuildContext context) => ProviderScope(child: MyApp()),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        builder: (context, child) => MaterialApp.router(
              theme: theme,
              themeMode: ThemeMode.system,
              routerConfig: router,
              debugShowCheckedModeBanner: false,
              // builder: DevicePreview.appBuilder,
            ));
  }
}
