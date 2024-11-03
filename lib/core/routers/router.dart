import 'package:go_router/go_router.dart';
import 'package:spotify_music_app/core/widgets/custom_transition_page.dart';
import 'package:spotify_music_app/main.dart';
import 'package:spotify_music_app/presentation/intro/pages/get_started_page.dart';
import 'package:spotify_music_app/presentation/splash/pages/splash.dart';

final GoRouter router = GoRouter(
  initialLocation: Splash.route,
  navigatorKey: MainApp.navigatorKey,
  routes: [
    GoRoute(
        path: '/get-started',
        pageBuilder: (context, state) {
          return customTransitionPage(child: const GetStartedPage());
        }),
  ],
);
