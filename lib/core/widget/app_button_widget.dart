import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_style.dart';

class SubmitButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool? isLoading;

  const SubmitButton(
      {super.key, required this.text, required this.onPressed, this.isLoading});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        elevation: 2,
        color: AppTextColors.whitegery,
        surfaceTintColor: AppTextColors.whitegery,
        shadowColor: AppTextColors.whitegery,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
        child: isLoading == true
            ? const CircularProgressIndicator()
            : Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    text,
                    style: AppTextStyles.heading1(),
                  ),
                ),
              ),
      ),
    );
  }
}
