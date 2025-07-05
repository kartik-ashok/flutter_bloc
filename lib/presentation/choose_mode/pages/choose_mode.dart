import 'dart:ui';

import 'package:bloclearn/common/widgets/buttons/basic_app_button.dart';
import 'package:bloclearn/core/config/assets/app_images.dart';
import 'package:bloclearn/core/config/assets/app_vectors.dart';
import 'package:bloclearn/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChooseMode extends StatelessWidget {
  const ChooseMode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      AppImages.chooseModeBG,
                    ))),
          ),
          /*
          is placed between two layers in a Stack, like this:
          This is a semi-transparent overlay that darkens the background image.
          It helps to make the text more readable against the background image.
          Its similar to a dimming effect.

          🧠 Think of it like:
          First: Show the full-color image.
          Second: Put a black, slightly see-through layer on top.
          Third: Place all the UI elements (logo, text, button) above that.
           */
          Container(
            color: Colors.black.withOpacity(0.15),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.logo),
                ),
                const Spacer(),
                const Text(
                  'Choose Your Mode',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 21,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        ClipOval(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  color:
                                      const Color(0xff30393C).withOpacity(0.5),
                                  shape: BoxShape.circle),
                              child: SvgPicture.asset(
                                AppVectors.sun,
                                fit: BoxFit.none,
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          'Light Mode',
                          style: TextStyle(
                              color: AppColors.darkGrey,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(width: 40),
                    Column(
                      children: [
                        ClipOval(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  color:
                                      const Color(0xff30393C).withOpacity(0.5),
                                  shape: BoxShape.circle),
                              child: SvgPicture.asset(
                                AppVectors.moon,
                                fit: BoxFit.none,
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          'Dark Mode',
                          style: TextStyle(
                              color: AppColors.darkGrey,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                BasicAppButton(
                    onpressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const ChooseMode()));
                    },
                    title: 'Continue')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
