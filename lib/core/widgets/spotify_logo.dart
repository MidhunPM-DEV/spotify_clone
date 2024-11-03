import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_music_app/core/configs/assets/app_vectors.dart';

class SpotifyLogo extends StatelessWidget {
  const SpotifyLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(AppVectors.logo);
  }
}
