import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:login_task_app/core/utils/app_text_style.dart';

import '../utils/app_assets.dart';
import '../utils/app_colors.dart';
import '../utils/app_string_constants.dart';

class SocialLoginWidget extends StatelessWidget {
  final VoidCallback? onPressed;

  const SocialLoginWidget({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 40,
              decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: .30,
                          color: AppTextColors.greyColor,
                          strokeAlign: BorderSide.strokeAlignCenter))),
            ),
            const Gap(5),
            Text(
              AppStrings.joinWith,
              style: AppTextStyles.bodyTextWithWeight(
                  color: AppTextColors.greyColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
            const Gap(5),
            Container(
              width: 40,
              decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: .30,
                          color: AppTextColors.greyColor,
                          strokeAlign: BorderSide.strokeAlignCenter))),
            ),
          ],
        ),
        const Gap(25),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.asset(
                AppImages.facebook,
                width: 25,
                height: 25,
                fit: BoxFit.cover,
              ),
            ),
            const Gap(8),
            ClipOval(
                child: Image.asset(
              AppImages.google,
              width: 25,
              height: 25,
              fit: BoxFit.cover,
            )),
          ],
        ),
      ],
    );
  }
}
