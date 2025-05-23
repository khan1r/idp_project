import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ecommerce_project/features/authentication/controllers/onboarding_controller.dart';
import 'package:ecommerce_project/utils/constraints/colors.dart';
import 'package:ecommerce_project/utils/constraints/sizes.dart';
import 'package:ecommerce_project/utils/device/device_utility.dart';
import 'package:ecommerce_project/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark ? TColors.primary : Colors.black),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}