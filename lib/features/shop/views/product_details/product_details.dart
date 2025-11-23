import 'package:e_commerce_app/features/shop/views/product_details/wedgets/product_meta_data.dart';
import 'package:e_commerce_app/features/shop/views/product_details/wedgets/product_thumbnail_and_slider.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunction.isDarkMode(context);
    return Scaffold(
      //   ---------body
      body: SingleChildScrollView(
        child: Column(
          children: [
            //P---------roduct Image with Slider
            // ---[Product Image With Slider]----
            SProductThumnailAndSlider(), // Stack
            // ---------Prodcut Details

            //Price,Title,Stack and Brand
            SProductMetaData(),
            //Attribute
            //Checkout Button
            //Description
          ],
        ),
      ),

      ///---------Bottom Navigation Button
    );
  }
}

