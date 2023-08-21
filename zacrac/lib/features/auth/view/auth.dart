import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zacrac/core/utils/assets_constant.dart';
import 'package:zacrac/core/utils/color_costants.dart';
import 'package:zacrac/core/utils/constants.dart';
import 'package:zacrac/core/widgets/button.dart';
import 'package:zacrac/core/widgets/nav_bar.dart';

import '../../../core/utils/utils.dart';
import '../../../core/widgets/my_text.dart';

class AuthScreen extends StatefulWidget {
  static const String route = '/auth-screen';

  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(children: [
              Image.asset(
                Assets.backgroudImage,
                width: double.infinity,
                height: double.infinity,
              ),
              SafeArea(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    vSpace(481.h),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 76.w,
                        vertical: 0.w,
                      ),
                      child: CustomText(
                        data: 'Be happy with you finance ',
                        textStyle: kStyleInter.copyWith(
                          color: kWhite,
                          fontWeight: FontWeight.w200,
                          fontSize: 32.sp,
                          letterSpacing: 1.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    vSpace(52.h),
                    PrimaryButton(
                      text: 'Sign up',
                      onPressed: () {},
                    ),
                    vSpace(),
                    PrimaryButton(
                      borderColor: kWhite,
                      backgroundColor: Colors.transparent,
                      text: 'Log in',
                      onPressed: () {
                        Navigator.of(context).pushNamed(BottomNav.route);
                      },
                    ),
                  ],
                ),
              ),
            ])));
  }
}
