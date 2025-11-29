import 'package:e_commerce_app/features/authentication/controllers/onboading/onboading_controller.dart';
import 'package:e_commerce_app/features/authentication/views/login/login.dart';
import 'package:e_commerce_app/features/authentication/views/onboading/onboading.dart';
import 'package:e_commerce_app/features/authentication/views/onboading/widgets/onboading_page.dart';
import 'package:e_commerce_app/features/authentication/views/onboading/widgets/onboading_skip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticatonRepository extends GetxController {
  static AuthenticatonRepository get instanc => Get.find();
  final storage=GetStorage();


  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }
  void screenRedirect(){
    storage.writeIfNull('isFirstTime', true);
    // IMPORTANT: Put controller before going to onboarding screen
     Get.put(OnBoardingController());
    storage.read('isFirstTime')==true ? Get.to(()=> OnboadingScreeen()) :Get.to(()=>LoginScreen());
  }
}
