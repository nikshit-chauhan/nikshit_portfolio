import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view/home/home.dart';
import 'package:flutter_portfolio/view/intro/components/animated_texts_componenets.dart';
import 'package:flutter_portfolio/view/splash/componenets/animated_loading_text.dart';
import 'package:get/route_manager.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.offAll(() => const HomePage());
    });
    return const Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedImageContainer(
              width: 100,
              height: 100,
            ),
            SizedBox(
              height: defaultPadding,
            ),
            AnimatedLoadingText(),
          ],
        ),
      ),
    );
  }
}
