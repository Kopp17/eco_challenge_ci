import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/theme/app_theme.dart';
import 'providers/theme_provider.dart';
import 'routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const EcoChallengeApp(),
    ),
  );
}

class EcoChallengeApp extends StatelessWidget {
  const EcoChallengeApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "EcoChallenge CI",

      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,

      themeMode: themeProvider.themeMode,

      initialRoute: AppRoutes.splash,

      routes: AppRoutes.routes,
    );
  }
}
