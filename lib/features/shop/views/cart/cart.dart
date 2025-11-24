import 'package:e_commerce_app/Common/style/padding.dart';
import 'package:e_commerce_app/Common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/Common/widgets/button/elevated_button.dart';
import 'package:e_commerce_app/Common/widgets/products/cart/cart_item.dart';
import 'package:e_commerce_app/Common/widgets/products/cart/product_qunatity_with_add_remove.dart';
import 'package:e_commerce_app/Common/widgets/text/product_price_text.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constans/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunction.isDarkMode(context);
    return Scaffold(
      /// -----[Appbar]-----
      appBar: SAppBarr(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineMedium),
      ),

      /// -----[Body]-----
      body: Padding(
        padding: SPadding.screenPadding,
        child: ListView.separated(
          separatorBuilder: (context, index) =>
              SizedBox(height: SSizes.spaceBtwSections),
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Column(

              children: [
                //Cart Icon
                SCartItem(),
                SizedBox(height: SSizes.spaceBtwItems),

                /// Price, Counter Buttons
                Row(
                  children: [
                    // extra space
                    SizedBox(width: 70.0),

                    /// Quantity Buttons
                    SProductQuantityWithAddAndRrmove(),

                    
                    Spacer(),
                    // Product price
                    SProductPriceText(price: '232')
                  ],
                ), // Row
              ],
            ); // Row
          },
        ),
      ),

      /// -----[Botoom Navigation]-----
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(SSizes.defaultSpace),
        child: SElevatedButton(onPress: (){},child: Text("Chequeout \$121223")),
      ),
    );
  }
}

