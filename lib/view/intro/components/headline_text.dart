import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';

class MyPortfolioText extends StatelessWidget {
  const MyPortfolioText({super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return TweenAnimationBuilder(
        tween: Tween(begin: start, end: end),
        duration: const Duration(milliseconds: 200),
        builder: (context, value, child) {
          return Responsive(
              desktop: Text("Welcome to Nikshit's Portfolio",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      height: 0,
                      fontSize: value)),
              largeMobile: Text("Welcome to Nikshit's Portfolio",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      height: 0,
                      fontSize: value)),
              mobile: AutoSizeText(
                "Welcome to Nikshit's Portfolio",
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                maxFontSize: 18,
                minFontSize: 10,
              ),
              tablet: Text("Welcome to Nikshit's Portfolio",
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      height: 0,
                      fontSize: value)));
        },
      );
    });
  }
}
