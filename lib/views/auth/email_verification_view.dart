import 'package:crypto_vallet/views/auth/reset_password_view.dart';
import 'package:crypto_vallet/utils/constants/padding_constants.dart';
import 'package:crypto_vallet/utils/constants/spacings_sizes.dart';
import 'package:crypto_vallet/utils/theme/myColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class EmailVerificationView extends StatelessWidget {
  const EmailVerificationView({super.key});

  static String routeName = '/emailVerification';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.white,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: AppPaddings.largePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SvgPicture.asset(
                "assets/images/email.svg",
                fit: BoxFit.cover,
              ),
            ),
            fixedVertSpacing(30),
            Text(
              "Check your email",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 25.sp,
                    color: MyColors.headingColor,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            fixedVertSpacing(10),
            Text(
              "We have sent a password recover instructions\nto your email.",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 14.sp,
                    color: MyColors.grey,
                    fontWeight: FontWeight.w400,
                  ),
            ),
            fixedVertSpacing(30),
            SizedBox(
              height: 50.h,
              width: double.infinity,
              child: MaterialButton(
                onPressed: () {
                  Get.toNamed(ResetPasswordView.routeName);
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11.sp)),
                color: MyColors.primary,
                child: Text(
                  "Open Email App",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 16.sp,
                        color: MyColors.white,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ),
            fixedVertSpacing(30),
            Center(
              child: Text(
                "Skip, I’ll confirm later",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 14.sp,
                      color: MyColors.darkGrey,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            fixedVertSpacing(50),
            Text(
              "Did not receive the email? Check your Spam ",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 14.sp,
                    color: MyColors.grey,
                    fontWeight: FontWeight.w400,
                  ),
            ),
            Row(
              children: [
                Text(
                  "folder or ",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 14.sp,
                        color: MyColors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                InkWell(
                  child: Text(
                    "try another email address.",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14.sp,
                          color: MyColors.blue,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          decorationColor: MyColors.blue,
                        ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
