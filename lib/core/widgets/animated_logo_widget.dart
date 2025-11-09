import 'package:aqar_hub/core/consts/app_assets.dart';
import 'package:flutter/material.dart';

class AnimatedLogoWidget extends StatelessWidget {
  final Animation<double> scaleAnimation;
  final Animation<double> rotateAnimation;
  final Animation<double> fadeAnimation;

  const AnimatedLogoWidget({
    Key? key,
    required this.scaleAnimation,
    required this.rotateAnimation,
    required this.fadeAnimation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: Listenable.merge([
        scaleAnimation,
        rotateAnimation,
        fadeAnimation,
      ]),
      builder: (context, child) {
        return Transform.scale(
          scale: scaleAnimation.value,
          child: Transform.rotate(
            angle: rotateAnimation.value,
            child: Opacity(
              opacity: fadeAnimation.value,
              child: Image.asset(AppImages.logoIcon, width: 150, height: 150),
            ),
          ),
        );
      },
    );
  }
}
