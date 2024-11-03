import 'package:flutter/material.dart';
import 'package:spotify_music_app/core/configs/assets/app_images.dart';
import 'package:spotify_music_app/core/widgets/green_rectangular_button.dart';
import 'package:spotify_music_app/core/widgets/spotify_logo.dart';

class GetStartedPage extends StatelessWidget {
  static const route = "/get-started";
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.introbg),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(color: Color(0x81000000)),
            child: SizedBox.expand(),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Center(child: SpotifyLogo()),
              ),
              Expanded(child: SizedBox()),
              Text("Enjoy listening to music",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700)),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: Text("""Your music, your vibe,
      all in one place.""",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500)),
              ),
              GreenRectangularButton(
                text: "Get Started",
              ),
            ],
          ),
        ],
      )),
    );
  }
}
