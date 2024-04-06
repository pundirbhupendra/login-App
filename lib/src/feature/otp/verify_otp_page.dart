// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:gap/gap.dart';

import '../../../core/network/api_status.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_string_constants.dart';
import '../../../core/utils/app_text_style.dart';
import '../../../core/widget/app_button_widget.dart';
import '../../../core/widget/social_login_widget.dart';
import 'cubit/otp_cubit.dart';
import 'cubit/otp_state.dart';

class VerifyOtpPage extends StatefulWidget {
  final String number;
  const VerifyOtpPage({super.key, required this.number});

  @override
  State<VerifyOtpPage> createState() => _VerifyOtpPageState();
}

class _VerifyOtpPageState extends State<VerifyOtpPage> {
  String otp = '';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gap(size.height * .04),
                Image.asset(AppImages.logo, width: 60, height: 60),
                Gap(size.height * .06),
                Text(AppStrings.verifyNow,
                    style: AppTextStyles.heading1().copyWith(fontSize: 20)),
                Gap(size.height * .04),
                Text(AppStrings.verifyNowCode,
                    style: AppTextStyles.bodyTextWithWeight(
                        color: AppTextColors.primaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500)),
                Gap(size.height * .05),
                VerificationCode(
                  textStyle: TextStyle(fontSize: 20.0),
                  keyboardType: TextInputType.number,
                  fullBorder: true,
                  length: 4,
                  cursorColor: Colors.black,
                  onCompleted: (String value) {
                    setState(() {
                      otp = value;
                    });
                  },
                  onEditing: (bool value) {
                    // setState(() {
                    //   _onEditing = value;
                    // });
                    // if (!_onEditing) FocusScope.of(context).unfocus();
                  },
                ),
                Gap(size.height * .05),
                BlocListener<OtpCubit, OtpState>(
                  listener: (context, state) {
                    if (state.apiStatus == ApiStatus.failer) {
                      var snackBar =
                          SnackBar(content: Text(state.message ?? ''));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                    if (state.apiStatus == ApiStatus.success) {
                      Navigator.pushNamed(context, 'homePage');
                    }
                  },
                  child: BlocBuilder<OtpCubit, OtpState>(
                    builder: (context, state) {
                      return SubmitButton(
                        text: 'verify',
                        isLoading: state.apiStatus == ApiStatus.loading,
                        onPressed: state.apiStatus == ApiStatus.loading
                            ? null
                            : () {
                                final data = {
                                  "method": "verifyOtp",
                                  "mobile_no": widget.number,
                                  "otp": otp,
                                };
                                context.read<OtpCubit>().otpVerification(data);
                              },
                      );
                    },
                  ),
                ),
                Gap(size.height * .04),
                Text(
                  AppStrings.signUp,
                  style: AppTextStyles.bodyTextWithWeight(
                      color: AppTextColors.primaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                Gap(size.height * .04),
                SocialLoginWidget(),
                Gap(size.height * .05),
                Text(
                  AppStrings.guest,
                  style: AppTextStyles.bodyTextWithWeight(
                      color: AppTextColors.primaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
