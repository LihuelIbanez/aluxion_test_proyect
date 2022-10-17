import 'package:aluxion_test_proyect/core/utils/routes.dart';
import 'package:aluxion_test_proyect/core/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() => runApp(const AluxionTestApp());

class AluxionTestApp extends StatelessWidget {
  const AluxionTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return GetMaterialApp(
      translations: Localization(),
      locale: const Locale('es', 'AR'),
      fallbackLocale: const Locale('es'),
      debugShowCheckedModeBanner: false,
      initialRoute: '/splashScreen',
      getPages: Pages.pages,
    );
  }
}
