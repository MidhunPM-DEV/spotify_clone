import 'package:flutter/material.dart';
import 'package:spotify_music_app/core/configs/theme/themes.dart';
import 'package:spotify_music_app/presentation/splash/pages/splash.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  static final navigatorKey = GlobalKey<NavigatorState>();
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Themes.lightTheme,
        home: const Splash());
  }
}
