import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_music_app/core/configs/assets/app_images.dart';
import 'package:spotify_music_app/core/configs/assets/app_vectors.dart';
import 'package:spotify_music_app/core/configs/theme/color_palette.dart';
import 'package:spotify_music_app/core/widgets/green_rectangular_button.dart';
import 'package:spotify_music_app/core/widgets/spotify_logo.dart';
import 'package:spotify_music_app/presentation/intro/widgets/theme_button.dart';

class ThemeSelectionPage extends StatelessWidget {
  static const String route = "/themeselectionpage";
  const ThemeSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.themePageBg),
                    fit: BoxFit.cover)),
            child: SizedBox.expand(),
          ),
          Center(
              child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(child: SpotifyLogo()),
            ),
            Expanded(child: SizedBox()),
            Text(
              "Choose your theme",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ThemeButton(
                          icon: SvgPicture.asset(AppVectors.moon),
                          onpressed: () {},
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text("Dark",
                              style: TextStyle(color: Colors.white)),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 64,
                    ),
                    Column(
                      children: [
                        ThemeButton(
                          icon: SvgPicture.asset(AppVectors.sun),
                          onpressed: () {},
                        ),
                        Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text("Light",
                                style: TextStyle(color: Colors.white))),
                      ],
                    )
                  ],
                )),
            GreenRectangularButton(
                text: "Continue",
                onpressed: () {
                  context.go("/registerorloginpage");
                })
          ])),
        ],
      ),
    ));
  }
}
