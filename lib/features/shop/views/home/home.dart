
import 'package:e_commerce_app/Common/widgets/textfield/serach_bar.dart';
import 'package:e_commerce_app/features/shop/views/home/widgets/home_appbar.dart';
import 'package:e_commerce_app/features/shop/views/home/widgets/home_catagories.dart';
import 'package:e_commerce_app/features/shop/views/home/widgets/primary_header_container.dart';
import 'package:e_commerce_app/utils/constans/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
    );
  }
}
