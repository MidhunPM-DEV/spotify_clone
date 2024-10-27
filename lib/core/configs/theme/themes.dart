import 'package:flutter/material.dart';
import 'package:spotify_music_app/core/configs/theme/color_palette.dart';

class Themes {
  static final lightTheme = ThemeData(
      primaryColor: ColorPalette.primary,
      scaffoldBackgroundColor: ColorPalette.lightbackground,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorPalette.primary,
            textStyle: const TextStyle(
                color: ColorPalette.white,
                fontSize: 20,
                fontWeight: FontWeight.bold),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            )),
      ));
  static final darkTheme = ThemeData(
      primaryColor: ColorPalette.primary,
      scaffoldBackgroundColor: ColorPalette.darkbackground,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorPalette.primary,
            textStyle: const TextStyle(
                color: ColorPalette.white,
                fontSize: 20,
                fontWeight: FontWeight.bold),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            )),
      ));
}
