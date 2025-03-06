import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:personal_hub/core/di/di.dart';
import 'package:personal_hub/core/presentation/styles/theme.dart';
import 'package:personal_hub/core/shared/router/router_app.dart';
import 'package:personal_hub/features/sign_up/data/helpers/hive_initializer.dart';

import 'features/sign_up/data/dto/user_dto.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _initializeApp();
  runApp(const ProviderScope(child: MyApp()));
}

Future<void> _initializeApp() async {
  await HiveInitializer.init();
  configureDependencies();
  _configureSystemUI();
}

void _configureSystemUI() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.black,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: mainTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: getIt<RouterApp>().goRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
