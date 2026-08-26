import 'package:flutter/material.dart';
import 'package:matrix_application/core/router/app_router.dart';
import 'package:matrix_application/core/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Matrix',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      // Defaults to the white/light theme regardless of system setting.
      themeMode: ThemeMode.light,
      routerConfig: appRouter,
    );
  }
}
