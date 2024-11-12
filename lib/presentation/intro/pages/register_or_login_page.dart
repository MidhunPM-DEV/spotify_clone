import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_music_app/core/configs/assets/app_images.dart';
import 'package:spotify_music_app/core/configs/assets/app_vectors.dart';
import 'package:spotify_music_app/core/configs/theme/color_palette.dart';
import 'package:spotify_music_app/core/widgets/spotify_logo.dart';

class RegisterOrLoginPage extends StatelessWidget {
  static const String route = "/register_or_login_page";
  const RegisterOrLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.white,
      body: Stack(children: [
        Align(
          alignment: AlignmentDirectional.bottomStart,
          child: Image.asset(
            AppImages.bellyEyelishRegisterBg,
          ),
        ),
        Align(
          alignment: AlignmentDirectional.bottomEnd,
          child: SvgPicture.asset(AppVectors.union),
        ),
        Center(
            child: Column(children: [
          SizedBox(height: 150),
          Center(child: SpotifyLogo()),
          SizedBox(height: 40),
          Text(
            "Enjoy listening to music",
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 16),
          Text(
            textAlign: TextAlign.center,
            maxLines: 2,
            "Spotify is a proprietary Swedish audio \n streaming and media services provider ",
          ),
          SizedBox(
            height: 24,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              width: 147,
              height: 60,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: ColorPalette.primary,
                ),
                child: Text(
                  "Register",
                  style: TextStyle(color: ColorPalette.white),
                ),
              ),
            ),
            SizedBox(
              width: 147,
              height: 60,
              child: TextButton(
                onPressed: () {},
                style:
                    TextButton.styleFrom(backgroundColor: ColorPalette.white),
                child: Text(
                  "Sign in",
                  style: TextStyle(color: ColorPalette.black),
                ),
              ),
            ),
          ])
        ])),
      ]),
    );
  }
}
