import 'package:e__commerce_app/utils/constants/colors.dart';
import 'package:e__commerce_app/utils/constants/sizes.dart';
import 'package:e__commerce_app/utils/device/device_utility.dart';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: PageController(),
          count: 3,
          effect: ExpandingDotsEffect(
              dotHeight: 6,
              activeDotColor: dark ? TColors.white : TColors.black),
        ));
  }
}
