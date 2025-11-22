import 'package:flutter/material.dart';

import '../../../utils/constans/sizes.dart';

class SRoundedImage extends StatelessWidget {
  const SRoundedImage({
    super.key,

    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius=true,
    this.border,
    this.backgroundColor,
    this.fit=BoxFit.contain,
    this.padding,
    this.isNetworkImage=false,
    this.onTap,
    this.borderRadius=SSizes.md,
  });


  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onTap;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(SSizes.md),
      child: Image(image: AssetImage(imageUrl)), // ClipRRect
    );
  }
}
