import 'package:e__commerce_app/utils/constants/sizes.dart';
import 'package:e__commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
              height: THelperFuntions.screenSize().height * 0.6,
              width: THelperFuntions.screenSize().width * 0.8,
              image: AssetImage(image)),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          Text(subtitle,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center)
        ],
      ),
    );
  }
}
