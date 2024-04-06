// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:login_task_app/core/network/api_status.dart';
import 'package:login_task_app/core/utils/app_assets.dart';
import 'package:login_task_app/core/utils/app_colors.dart';
import 'package:login_task_app/core/utils/app_string_constants.dart';
import 'package:login_task_app/core/utils/app_text_style.dart';
import 'package:login_task_app/src/feature/login/cubit/login_cubit.dart';

import '../../../core/widget/app_button_widget.dart';
import '../../../core/widget/social_login_widget.dart';
import 'cubit/login_state.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  TextEditingController mobileNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gap(size.height * .04),
                Image.asset(AppImages.logo, width: 60, height: 60),
                Gap(size.height * .06),
                Text(AppStrings.welcomeBack,
                    style: AppTextStyles.heading1()
                        .copyWith(fontSize: 20, fontWeight: FontWeight.w700)),
                const Gap(14),
                Text(AppStrings.letGetYouSignedIn,
                    style: AppTextStyles.bodyTextWithWeight(
                        fontSize: 15, fontWeight: FontWeight.w400)),
                Gap(size.height * .08),
                Container(
                  //  padding: EdgeInsets.all(6),
                  // ignore: sort_child_properties_last
                  child: SizedBox(
                    child: TextField(
                      controller: mobileNumber,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(20),
                        fillColor: Color(0xFF97A7C3).withOpacity(.1),
                        filled: true,
                        hintText: AppStrings.enterMobileNumber,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                    ),
                  ),
                  decoration: ShapeDecoration(
                      color: Color(0xFF97A7C3).withOpacity(.1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                const Gap(14),
                Text('Forget Password',
                    style: AppTextStyles.bodyTextWithWeight(
                        color: AppTextColors.greyColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500)),
                Gap(size.height * .05),
                BlocListener<LoginCubit, LoginState>(
                  listener: (context, state) {
                    if (state.apiStatus == ApiStatus.failer) {
                      var snackBar =
                          SnackBar(content: Text(state.message ?? ''));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                    if (state.apiStatus == ApiStatus.success) {
                      Navigator.pushNamed(context, 'veryOtp',
                          arguments: mobileNumber.text);
                    }
                  },
                  child: BlocBuilder<LoginCubit, LoginState>(
                    builder: (context, state) {
                      return SubmitButton(
                        text: 'Submit',
                        isLoading: state.apiStatus == ApiStatus.loading,
                        onPressed: state.apiStatus == ApiStatus.loading
                            ? null
                            : () {
                                final mapdata = {
                                  "method": "getOtp",
                                  "mobile_no": mobileNumber.text,
                                  "password": "1"
                                };
                                context.read<LoginCubit>().login(mapdata);
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
                Gap(size.height * .05),
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
