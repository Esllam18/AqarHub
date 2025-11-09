import 'package:aqar_hub/core/consts/app_colors.dart';
import 'package:flutter/material.dart';

class SplashBackgroundWidget extends StatelessWidget {
  final Animation<double> backgroundAnimation;

  const SplashBackgroundWidget({Key? key, required this.backgroundAnimation})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: backgroundAnimation,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.white,
                AppColors.background.withOpacity(backgroundAnimation.value),
              ],
            ),
          ),
        );
      },
    );
  }
}
