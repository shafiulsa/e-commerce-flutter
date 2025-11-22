import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/Common/widgets/images/roundes_image.dart';
import 'package:e_commerce_app/Common/widgets/textfield/serach_bar.dart';
import 'package:e_commerce_app/features/shop/controllers/home/home_controller.dart';
import 'package:e_commerce_app/features/shop/views/home/widgets/banner_dot_navigation.dart';
import 'package:e_commerce_app/features/shop/views/home/widgets/home_appbar.dart';
import 'package:e_commerce_app/features/shop/views/home/widgets/home_catagories.dart';
import 'package:e_commerce_app/features/shop/views/home/widgets/primary_header_container.dart';
import 'package:e_commerce_app/features/shop/views/home/widgets/promo_slider.dart';
import 'package:e_commerce_app/utils/constans/images.dart';
import 'package:e_commerce_app/utils/constans/sizes.dart';
import 'package:e_commerce_app/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller= Get.put(HomeController());
    return Scaffold(
      body: Column(
        children: [
          //Upper Part
          Stack(
            children: [
              Container(
                color: Colors.yellow, // Background color
                child: SizedBox(height: SSizes.homePrimaryHeaderHeight + 10),
              ),

              //Primary Header Container
              SPrimaryHeaderContainer(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //AppBar
                      SHomeAppBar(),

                      // Product Catagory
                      SHomeCatagories(),
                    ],
                  ),
                ),
              ),
              // search bar
              USearchBar(),
            ],
          ),
          // Lower Part

          //Banner
          Padding(
            padding: const EdgeInsets.all(SSizes.defaultSpace),
            child: SPromoSlider(
              banners: [SImages.homeBanner1,SImages.homeBanner2,SImages.homeBanner3,SImages.homeBanner4,SImages.homeBanner5],
            ), // CarouselSlider
          ), // Padding
        ],
      ),
    );
  }
}

