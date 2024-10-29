import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_music_app/core/configs/assets/app_vectors.dart';
import 'package:spotify_music_app/core/configs/theme/color_palette.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.lightbackground,
      body: Center(child: SvgPicture.asset("assets/vectors/logo.svg")),
    );
  }
}
