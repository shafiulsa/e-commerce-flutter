import 'package:e_commerce_app/Common/widgets/custome_shape/circular_container.dart';
import 'package:e_commerce_app/Common/widgets/custome_shape/rounded_edges_container.dart';
import 'package:e_commerce_app/utils/constans/colors.dart';
import 'package:e_commerce_app/utils/constans/sizes.dart';
import 'package:flutter/material.dart';

class SPrimaryHeaderContainer extends StatelessWidget {
  const SPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SRoundedEdges(
      child: Container(
        height: SSizes.homePrimaryHeaderHeight,
        color: SColors.primary,
        child: Stack(
          children: [
            //circuler container
            Positioned(
              top: -150,
              right: -150,
              child: SCircularContainer(
                // height: SSizes.homePrimaryHeaderHeight,
                // width: SSizes.homePrimaryHeaderHeight,
                backgroundColor: SColors.white.withValues(alpha: 0.1),
              ),
            ),

            // circuler container
            Positioned(
              top: 50,
              right: -250,
              child: SCircularContainer(
                // height: SSizes.homePrimaryHeaderHeight,
                // width: SSizes.homePrimaryHeaderHeight,
                backgroundColor: SColors.white.withValues(alpha: 0.1),
              ),
            ),
            //circuler box ar upor o ja thkbe taka ai chile hisebe asbe
            child,
          ],
        ),
      ),
    );
  }
}
