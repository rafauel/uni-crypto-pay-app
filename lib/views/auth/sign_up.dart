import 'package:crypto_vallet/utils/constants/padding_constants.dart';
import 'package:crypto_vallet/utils/constants/spacings_sizes.dart';
import 'package:crypto_vallet/utils/theme/myColors.dart';
import 'package:crypto_vallet/utils/widget/custom_txtfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  static String routeName = "/signUp";

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
                    height: 90.h,
                  ),
                  Text(
                    "Create \nyour account",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 30.sp,
                          color: MyColors.headingColor,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  fixedVertSpacing(10),
                  Text(
                    "cryptocurrency wallet mobile apps available for \nmanaging and storing your digital assets.",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14.sp,
                          color: MyColors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  fixedVertSpacing(30),
                  Text(
                    "Full Name",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14.sp,
                          color: MyColors.black,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const CustomTextField(
                      hintText: "Hasan Mahmud", icon: 'assets/icons/user.svg'),
                  fixedVertSpacing(20),
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
                  fixedVertSpacing(20),
                  Text(
                    "Telefone",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14.sp,
                          color: MyColors.black,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const CustomTextField(
                      hintText: "(11) 94594-8066",
                      icon: "assets/icons/email.svg"),
                  fixedVertSpacing(20),
                  Text(
                    "Password",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14.sp,
                          color: MyColors.black,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const PasswordCustomTextField(
                    hintText: "*************",
                  ),
                  fixedVertSpacing(20),
                  Text(
                    "Confirm Password",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14.sp,
                          color: MyColors.black,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const PasswordCustomTextField(
                    hintText: "*************",
                  ),
                  fixedVertSpacing(30),
                  SizedBox(
                    height: 50.h,
                    width: double.infinity,
                    child: MaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11.sp)),
                      color: MyColors.primary,
                      child: Text(
                        "Sign Up",
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
                  "Already have an account?",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 14.sp,
                        color: MyColors.grey,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/signInView');
                  },
                  child: Text(
                    " Sign In",
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
