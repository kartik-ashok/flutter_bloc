import 'package:bloclearn/core/config/assets/app_vectors.dart';
import 'package:bloclearn/presentation/intro/pages/get_started.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    reDirectToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(AppVectors.logo),
      ),
    );
  }

  Future<void> reDirectToHome() async {
    // Simulate a delay for splash screen
    await Future.delayed(const Duration(seconds: 2));
    // Navigate to home page (not implemented in this snippet)
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const GetStartedPage()));
  }
}
