import 'package:bloclearn/common/widgets/buttons/basic_app_button.dart';
import 'package:bloclearn/core/config/assets/app_images.dart';
import 'package:bloclearn/core/config/assets/app_vectors.dart';
import 'package:bloclearn/core/config/theme/app_colors.dart';
import 'package:bloclearn/presentation/choose_mode/pages/choose_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// class GetStarted extends StatelessWidget {
//   const GetStarted({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(children: [
//         Container(
//           padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
//           decoration: const BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage(AppImages.intro),
//               fit: BoxFit.fill,
//             ),
//           ),
//           child: Column(
//             children: [
//               Align(
//                   alignment: Alignment.topCenter,
//                   child: SvgPicture.asset(AppVectors.logo)),
//               const Spacer(),
//               const Text('Enjoy the Listening to your favorite music',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   )),
//               const SizedBox(height: 21),
//               const Text(
//                 'lorem ipsum dolor sit amet, consectetur adipiscing elit. Thus is a placeholder text.'
//                 'Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla. Sed posuere consectetur est at lobortis.'
//                 'Donec ullamcorper nulla non metus auctor fringilla. Sed posuere consectetur est at lobortis.',
//                 style: TextStyle(
//                   fontSize: 13,
//                   fontWeight: FontWeight.w500,
//                   color: Colors.grey,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 20),
//               BasicAppButton(
//                   onpressed: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const ChooseMode()));
//                   },
//                   title: "Get Started",
//                   height: 50),
//             ],
//           ),
//         )
//       ]),
//     );
//   }
// }

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

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
                      AppImages.intro,
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
                  'Enjoy Listening To Music',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 21,
                ),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                      fontSize: 13),
                  textAlign: TextAlign.center,
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
                    title: 'Get Started')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
