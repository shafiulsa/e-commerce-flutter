import 'package:e_commerce_app/features/shop/views/home/widgets/home_appbar.dart';
import 'package:e_commerce_app/features/shop/views/home/widgets/primary_header_container.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SPrimaryHeaderContainer(
        child: Container(
          child: Column(
            children: [

              //AppBar
              SHomeAppBar(),
            ],
          ),
        ),
      ),
    );
  }
}

