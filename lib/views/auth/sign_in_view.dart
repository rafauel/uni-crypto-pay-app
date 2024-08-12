import 'package:crypto_vallet/views/auth/forgot_password_view.dart';
import 'package:crypto_vallet/views/auth/sign_up.dart';
import 'package:crypto_vallet/views/bottom_nav/btm_nav_bar.dart';
import 'package:crypto_vallet/utils/constants/padding_constants.dart';
import 'package:crypto_vallet/utils/constants/spacings_sizes.dart';
import 'package:crypto_vallet/utils/theme/myColors.dart';
import 'package:crypto_vallet/utils/widget/custom_txtfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  static String routeName = "/signInView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: AppPaddings.mediumPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 270.h,
                  ),
                  Text(
                    "Sign in \nyour account",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 30.sp,
                          color: MyColors.headingColor,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  fixedVertSpacing(10),
                  Text(
                    "Cryptocurrency wallet mobile apps available for \nmanaging and storing your digital assets.",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14.sp,
                          color: MyColors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  fixedVertSpacing(30),
                  Text(
                    "Email",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14.sp,
                          color: MyColors.black,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const CustomTextField(
                      hintText: "example@gmail.com",
                      icon: "assets/icons/email.svg"),
                  fixedVertSpacing(30),
                  Text(
                    "Password",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14.sp,
                          color: MyColors.black,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const PasswordCustomTextField(hintText: "*************"),
                  fixedVertSpacing(20),
                  InkWell(
                    onTap: () {
                      Get.toNamed(ForgotPasswordView.routeName);
                    },
                    child: Text(
                      "Forgot Password?",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 13.sp,
                            color: MyColors.grey,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            decorationColor: MyColors.grey,
                          ),
                    ),
                  ),
                  fixedVertSpacing(30),
                  SizedBox(
                    height: 50.h,
                    width: double.infinity,
                    child: MaterialButton(
                      onPressed: () {
                        Get.offAllNamed(BottomNavBar.routeName);
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11.sp)),
                      color: MyColors.primary,
                      child: Text(
                        "Sign In",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 16.sp,
                              color: MyColors.white,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: MyColors.white,
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account?",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 14.sp,
                        color: MyColors.grey,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(SignUpView.routeName);
                  },
                  child: Text(
                    " Sign Up",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14.sp,
                          color: MyColors.blue,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ],
            ),
          ),
          fixedVertSpacing(10),
        ],
      ),
    );
  }
}
