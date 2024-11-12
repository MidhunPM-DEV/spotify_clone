import 'package:go_router/go_router.dart';
import 'package:spotify_music_app/core/widgets/custom_transition_page.dart';
import 'package:spotify_music_app/main.dart';
import 'package:spotify_music_app/presentation/intro/pages/get_started_page.dart';
import 'package:spotify_music_app/presentation/intro/pages/register_or_login_page.dart';
import 'package:spotify_music_app/presentation/intro/pages/theme_selection_page.dart';
import 'package:spotify_music_app/presentation/splash/pages/splash.dart';

final GoRouter router = GoRouter(
  initialLocation: Splash.route,
  navigatorKey: MainApp.navigatorKey,
  routes: [
    GoRoute(
        path: '/splash',
        pageBuilder: (context, state) {
          return customTransitionPage(child: const Splash());
        }),
    GoRoute(
        path: '/get-started',
        pageBuilder: (context, state) {
          return customTransitionPage(child: const GetStartedPage());
        }),
    GoRoute(
        path: '/themeselectionpage',
        pageBuilder: (context, state) {
          return customTransitionPage(child: const ThemeSelectionPage());
        }),
    GoRoute(
        path: '/registerorloginpage',
        builder: (context, state) => const RegisterOrLoginPage()),
  ],
);
