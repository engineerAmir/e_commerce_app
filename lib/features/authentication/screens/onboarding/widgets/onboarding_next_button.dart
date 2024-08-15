import 'package:e__commerce_app/utils/constants/colors.dart';
import 'package:e__commerce_app/utils/constants/sizes.dart';
import 'package:e__commerce_app/utils/device/device_utility.dart';
import 'package:e__commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFuntions.isDarkMode(context);
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        right: TSizes.defaultSpace,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: dark ? TColors.primary : TColors.black),
          child: Icon(
            Icons.arrow_right,
          ),
          onPressed: () {},
        ));
  }
}
