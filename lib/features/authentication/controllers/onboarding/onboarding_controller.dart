import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();

  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex = index;

  void dotNavigationClick(index) {}

  void nextPage() {}

  void skipPage() {}
}
