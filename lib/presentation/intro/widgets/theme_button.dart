import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_music_app/core/configs/theme/color_palette.dart';

class ThemeButton extends StatelessWidget {
  final void Function()? onpressed;
  final SvgPicture icon;
  const ThemeButton({
    super.key,
    required this.onpressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72,
      height: 72,
      child: IconButton(
        onPressed: () {
          onpressed!();
        },
        icon: icon,
        style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(ColorPalette.darkgrey)),
      ),
    );
  }
}
