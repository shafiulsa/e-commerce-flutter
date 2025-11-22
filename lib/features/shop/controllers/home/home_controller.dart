import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  static HomeController get instance=>Get.find();


  //variable
final carousalController=CarouselSliderController();
RxInt currentIndex=0.obs;

//On Caurosal Page Change
void onPageChange(int index){
  currentIndex.value=index;
}
}