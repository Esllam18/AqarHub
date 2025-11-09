import 'package:aqar_hub/core/consts/app_assets.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  final Animation<double> slideAnimation;
  final Animation<double> fadeAnimation;
  final bool isArabic;

  const AnimatedTextWidget({
    Key? key,
    required this.slideAnimation,
    required this.fadeAnimation,
    this.isArabic = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: Listenable.merge([slideAnimation, fadeAnimation]),
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, slideAnimation.value),
          child: Opacity(
            opacity: fadeAnimation.value,
            child: Image.asset(
              isArabic ? AppImages.arabicText : AppImages.englishText,
              width: 200,
              height: 60,
            ),
          ),
        );
      },
    );
  }
}
