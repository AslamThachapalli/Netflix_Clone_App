import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height; //780
  static double screenWidth = Get.context!.width; //360

  static double height5 = screenHeight / 156;
  static double height10 = screenHeight / 78;
  static double height15 = screenHeight / 52;
  static double height20 = screenHeight / 39;
  static double height50 = screenHeight / 15.6;

  static double width5 = screenWidth / 72;
  static double width10 = screenWidth / 36;
  static double width15 = screenWidth / 24;
  static double width20 = screenWidth / 18;
  static double width50 = screenWidth / 7.2;

  static double fontSize5 = screenHeight / 156;
  static double fontSize10 = screenHeight / 78;
  static double fontSize15 = screenHeight / 52;
  static double fontSize20 = screenHeight / 39;

  static double iconSize5 = screenHeight / 156;
  static double iconSize10 = screenHeight / 78;
  static double iconSize15 = screenHeight / 52;
  static double iconSize20 = screenHeight / 39;

  static double radius5 = screenHeight / 156;
  static double radius10 = screenHeight / 78;
}
