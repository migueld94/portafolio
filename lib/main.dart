// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:portfolio2024/assets/l10n/l10n.dart';
import 'package:portfolio2024/pages/mobile_web.dart';
import 'package:portfolio2024/pages/tablet_web.dart';
import 'package:portfolio2024/pages/desktop_web.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:portfolio2024/assets/utils/theme/themes_provider.dart';
import 'package:portfolio2024/assets/utils/responsive/responsive_layout.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return ThemeProvider();
      },
      builder: (context, child) {
        final provider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          title: 'Portfolio',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: true,
            fontFamily: 'Nunito',
          ),
          locale: provider.locale,
          supportedLocales: L10n.all,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          home: const ResponsiveLayout(
            desktopScaffold: DesktopWeb(),
            tabletScaffold: TabletWeb(),
            mobileScaffold: MobileWeb(),
          ),
        );
      },
    );
  }
}