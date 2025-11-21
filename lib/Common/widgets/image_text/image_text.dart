import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constans/colors.dart';
import '../../../utils/constans/sizes.dart';
import '../custome_shape/circular_container.dart';

class SVerticalImageText extends StatelessWidget {
  const SVerticalImageText({
    super.key,
    required this.title,
    required this.image,
    required this.textColor,
    this.backGroundColor,
    this.onTap,
  });

  final String title, image;
  final Color textColor;
  final Color? backGroundColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    //GestureDetector is a Flutter widget used to detect user interactions like tap, double tap, long press, swipe, drag, etc.
    //
    // ✅ What GestureDetector Does
    //
    // It wraps any widget and listens for gestures:
    // Tap, Double tap,Long press,Horizontal drag,Vertical drag,Pan,Scale
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          ///
          SCircularContainer(
            height: 56,
            width: 56,
            backgroundColor: backGroundColor ?? SColors.white,
            padding: EdgeInsets.all(SSizes.sm),
            child: Image(image: AssetImage(image), fit: BoxFit.cover),
          ),

          SizedBox(height: SSizes.spaceBtwItems / 2),
          // title
          SizedBox(
            width: 55,
            child: Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.apply(color: textColor),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ), // Text
          ), // SizedBox
        ],
      ),
    );
  }
}
