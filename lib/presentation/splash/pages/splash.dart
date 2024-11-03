import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_music_app/core/configs/theme/color_palette.dart';
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
      body: Center(child: SvgPicture.asset("assets/vectors/logo.svg")),
    );
  }

  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 2));
    if (!mounted) return;
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return const GetStartedPage();
    }));
  }
}
