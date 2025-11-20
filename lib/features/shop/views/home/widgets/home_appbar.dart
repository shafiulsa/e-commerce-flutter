import 'package:e_commerce_app/Common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/Common/widgets/products/cart/cart_counter_icon.dart';
import 'package:e_commerce_app/utils/constans/colors.dart';
import 'package:e_commerce_app/utils/constans/text.dart';
import 'package:flutter/material.dart';

class SHomeAppBar extends StatelessWidget {
  const SHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SAppBarr(
      // showBackArrow: true,

      //Title and SubTitle
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //title
          Text(
            SText.homeAppBarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: SColors.grey),
          ),
          //subtitle
          Text(
            SText.homeAppBarSubTitle,
            style: Theme.of(
              context,
            ).textTheme.labelSmall!.apply(color: SColors.white),
          ),
        ],
      ),
   // Bag Icon
      actions: [
        SCartCounterIcon()

      ],
    );
  }
}
