import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_music_app/core/configs/theme/color_palette.dart';
import 'package:spotify_music_app/core/routers/router.dart';
import 'package:spotify_music_app/core/widgets/spotify_logo.dart';
import 'package:spotify_music_app/presentation/intro/pages/get_started_page.dart';

class Splash extends StatefulWidget {
  static const route = "/splash";
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    redirect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.lightbackground,
      body: Center(child: SpotifyLogo()),
    );
  }

  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 2));
    if (!mounted) return;
    context.go(GetStartedPage.route);
  }
}
