import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_boilerplate/presentation/screens/home/home_screen.dart';
import 'package:flutter_clean_boilerplate/presentation/shared/theme/app_themes.dart';
import 'package:get_it/get_it.dart';

import 'core/util/app_constants.dart';

final getIt = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en')],
      useOnlyLangCode: true,
      path: AppConstants.translationsPath,
      fallbackLocale: const Locale('en'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        home: HomeScreen(),
        theme: AppThemes.darkTheme,
      );
}
