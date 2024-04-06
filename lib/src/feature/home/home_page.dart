// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:login_task_app/core/utils/app_colors.dart';
import 'package:login_task_app/core/utils/app_string_constants.dart';
import 'package:login_task_app/core/utils/app_text_style.dart';

import '../../../core/utils/app_assets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _onItemTapped(int index) {
    // setState(() {
    //   // _selectedIndex = index;
    // });
  }
  @override
  Widget build(BuildContext context) {
    final style = AppTextStyles.bodyTextWithWeight(
      fontSize: 10,
      fontWeight: FontWeight.w400,
    );
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppTextColors.whitegery,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Stack(
                  children: [
                    Image.asset(AppImages.topImages),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                AppImages.roundedmenu,
                                width: 40,
                                height: 40,
                              ),
                              Image.asset(
                                AppImages.logo,
                                width: 35,
                                height: 35,
                              ),
                              SvgPicture.asset(
                                AppImages.roundedsearch,
                                width: 35,
                                height: 35,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Gap(size.height * .02),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.shopByYourStyle,
                    style: AppTextStyles.heading2()
                        .copyWith(fontWeight: FontWeight.w400, fontSize: 20),
                  ),
                  Gap(size.height * .02),
                  Wrap(
                    spacing: 6,
                    runSpacing: 8,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Container(
                          padding: EdgeInsets.all(6),
                          child: Text(AppStrings.sportsWear, style: style),
                          decoration: ShapeDecoration(
                              color: AppTextColors.greyColor.withOpacity(.2),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Container(
                          padding: EdgeInsets.all(6),
                          child: Text('Leisure Wear', style: style),
                          decoration: ShapeDecoration(
                              color: AppTextColors.greyColor.withOpacity(.2),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Container(
                          padding: EdgeInsets.all(6),
                          child: Text('Work Wear', style: style),
                          decoration: ShapeDecoration(
                              color: AppTextColors.greyColor.withOpacity(.2),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Container(
                          padding: EdgeInsets.all(6),
                          child: Text('Rest Wear', style: style),
                          decoration: ShapeDecoration(
                              color: AppTextColors.greyColor.withOpacity(.2),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24))),
                        ),
                      ),
                    ],
                  ),
                  const Gap(10),
                  Text(
                    AppStrings.newCollections,
                    style: AppTextStyles.heading1()
                        .copyWith(fontWeight: FontWeight.w400, fontSize: 20),
                  ),
                  SizedBox(
                    height: 180,
                    child: Stack(
                      children: [
                        //2
                        Positioned(
                            right: 80,
                            top: 60,
                            child: Image.asset(
                              AppImages.outfit2,
                              width: 100,
                              height: 100,
                            )),
                        Positioned(
                            left: 60,
                            top: 60,
                            child: Image.asset(
                              AppImages.outfit1,
                              width: 100,
                              height: 100,
                            )),

                        //1
                        Positioned(
                            right: 108,
                            top: 10,
                            child: Image.asset(
                              AppImages.maskgroup,
                              width: 100,
                              height: 200,
                            )),
                        Positioned(
                          left: 100,
                          top: 10,
                          child: Image.asset(
                            AppImages.mask176,
                            width: 100,
                            height: 200,
                          ),
                        ),
                        //front image

                        Positioned(
                          left: 120,
                          top: 25,
                          right: 120,
                          child: Image.asset(
                            AppImages.image1,
                            width: 130,
                            height: 140,
                          ),
                        ),
                        Positioned(
                          left: 120,
                          top: 130,
                          right: 120,
                          child: Image.asset(
                            AppImages.centerIcon,
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                    child: BottomNavigationBar(
                      elevation: 0,
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      backgroundColor: AppTextColors.deepblack1,
                      fixedColor: AppTextColors.deepblack1,
                      items: [
                        BottomNavigationBarItem(
                          backgroundColor: AppTextColors.deepblack1,
                          icon: SvgPicture.asset(AppImages.home),
                          label: 'Page 1',
                        ),
                        BottomNavigationBarItem(
                          icon: SvgPicture.asset(AppImages.hearticon),
                          label: 'Page 2',
                        ),
                        BottomNavigationBarItem(
                          icon: SvgPicture.asset(AppImages.shoppingbagsvgrep),
                          label: 'Page 3',
                        ),
                        BottomNavigationBarItem(
                          icon: SvgPicture.asset(AppImages.chatIcon),
                          label: 'Page 3',
                        ),
                        BottomNavigationBarItem(
                          icon: Image.asset(AppImages.personImage,
                              height: 20, width: 20),
                          label: 'Page 3',
                        ),
                      ],
                      currentIndex: 0,
                      onTap: _onItemTapped,
                    ),
                  ),
                  Image.asset(
                    AppImages.saleBanner,
                    fit: BoxFit.cover,
                    height: 65,
                  ),
                  const Gap(10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 2,
                          child: SvgPicture.asset(
                            AppImages.featureSize,
                            fit: BoxFit.fill,
                            height: 50,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            AppImages.measure,
                            fit: BoxFit.contain,
                            height: 80,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(10),
                  Stack(
                    children: [
                      Image.asset(
                        AppImages.cartPerson,
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        top: 14,
                        left: 20,
                        right: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Gap(20),
                            Text('do you want a better shopping experience?',
                                textAlign: TextAlign.center,
                                style: AppTextStyles.bodyTextWithWeight(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                )),
                            const Gap(20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      AppImages.help1,
                                      height: 40,
                                    ),
                                    const Gap(5),
                                    Text(
                                        "We'll help you find\nthe perfect style & size",
                                        textAlign: TextAlign.center,
                                        style: AppTextStyles.bodyTextWithWeight(
                                          color: Colors.white,
                                          fontSize: 6,
                                          fontWeight: FontWeight.w400,
                                        ))
                                  ],
                                ),
                                const Gap(10),
                                Column(
                                  children: [
                                    Image.asset(
                                      AppImages.guarantee1,
                                      height: 40,
                                    ),
                                    const Gap(5),
                                    Text(
                                      'We have perfect fit\nguarantee to ensure\nyour satisfaction.',
                                      textAlign: TextAlign.center,
                                      style: AppTextStyles.bodyTextWithWeight(
                                        color: Colors.white,
                                        fontSize: 6,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                                const Gap(10),
                                Column(
                                  children: [
                                    Image.asset(
                                      AppImages.returning,
                                      height: 40,
                                    ),
                                    const Gap(5),
                                    Text(
                                      'Easy returns & exchanges\nwithin 30 days',
                                      textAlign: TextAlign.center,
                                      style: AppTextStyles.bodyTextWithWeight(
                                        color: Colors.white,
                                        fontSize: 6,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Gap(size.height * .03),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: 'OUTFIT',
                                  style: AppTextStyles.bodyTextWithWeight(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500)),
                              TextSpan(
                                  text: ' INSPIRATION',
                                  style: AppTextStyles.bodyTextWithWeight(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      color: AppTextColors.deepRed)),
                            ],
                          ),
                        ),
                        Text('See All',
                            style: AppTextStyles.bodyTextWithWeight(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppTextColors.greyColor))
                      ],
                    ),
                  ),
                  Gap(size.height * .03),
                  Row(
                    children: [
                      Image.asset(
                        AppImages.outfit1,
                        width: 130,
                        height: 140,
                      ),
                      Image.asset(
                        AppImages.outfit2,
                        width: 130,
                        height: 140,
                      ),
                      Image.asset(
                        AppImages.image2,
                        width: 130,
                        height: 140,
                      ),
                    ],
                  ),
                  Gap(size.height * .03),
                ],
              )
            ],
          ),
        ));
  }
}
