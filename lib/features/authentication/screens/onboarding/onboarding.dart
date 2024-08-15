import 'package:e__commerce_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:e__commerce_app/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:e__commerce_app/utils/constants/colors.dart';
import 'package:e__commerce_app/utils/constants/image_strings.dart';
import 'package:e__commerce_app/utils/constants/sizes.dart';

import 'package:e__commerce_app/utils/constants/text_strings.dart';
import 'package:e__commerce_app/utils/device/device_utility.dart';
import 'package:e__commerce_app/utils/helpers/helper_functions.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets/onboarding_next_button.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: const [
              OnboardingPage(
                image: TImages.onboarding1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: TImages.onboarding2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image: TImages.onboarding3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          OnBoardingSkip(),
          OnBoardingDotNavigation(),
          OnBoardingNextButton()
        ],
      ),
    );
  }
}
