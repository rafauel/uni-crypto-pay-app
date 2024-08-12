import 'package:crypto_vallet/views/auth/create_password_view.dart';
import 'package:crypto_vallet/utils/constants/padding_constants.dart';
import 'package:crypto_vallet/utils/constants/spacings_sizes.dart';
import 'package:crypto_vallet/utils/theme/myColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  static String routeName = '/resetPassword';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Padding(
        padding: AppPaddings.largePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 35.h,
                    width: 35.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: MyColors.grey,
                      ),
                      borderRadius: BorderRadius.circular(10.sp),
                    ),
                    child: Padding(
                      padding: AppPaddings.smallPadding,
                      child: SvgPicture.asset(
                        'assets/icons/caret-left.svg',
                        fit: BoxFit.contain,
                        color: MyColors.grey,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  "Reset Password",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 18.sp,
                        color: MyColors.black,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
            fixedVertSpacing(100),
            Text(
              "Please enter the verification code we sent to ",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 13.sp,
                    color: MyColors.darkGrey2,
                    fontWeight: FontWeight.w400,
                  ),
            ),
            Row(
              children: [
                Text(
                  "your email ",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 13.sp,
                        color: MyColors.darkGrey2,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                Text(
                  "m***@gmail.com",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 13.sp,
                        color: MyColors.darkGrey2,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
            fixedVertSpacing(60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40.h,
                  width: 30,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.sp),
                        borderSide: BorderSide(color: MyColors.grey),
                      ),
                    ),
                  ),
                ),
                fixedHorzSpacing(10),
                SizedBox(
                  height: 40.h,
                  width: 30,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.sp),
                        borderSide: BorderSide(color: MyColors.grey),
                      ),
                    ),
                  ),
                ),
                fixedHorzSpacing(10),
                SizedBox(
                  height: 40.h,
                  width: 30,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.sp),
                        borderSide: BorderSide(color: MyColors.grey),
                      ),
                    ),
                  ),
                ),
                fixedHorzSpacing(10),
                SizedBox(
                  height: 40.h,
                  width: 30,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.sp),
                        borderSide: BorderSide(color: MyColors.grey),
                      ),
                    ),
                  ),
                ),
                fixedHorzSpacing(10),
                SizedBox(
                  height: 40.h,
                  width: 30,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.sp),
                        borderSide: BorderSide(color: MyColors.grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            fixedVertSpacing(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Not yet get? ",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 13.sp,
                        color: MyColors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                Text(
                  "Resend OTP",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 13.sp,
                        color: MyColors.blue,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
            fixedVertSpacing(60),
            SizedBox(
              height: 50.h,
              width: double.infinity,
              child: MaterialButton(
                onPressed: () {
                  Get.toNamed(CreateNewPasswordView.routeName);
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11.sp)),
                color: MyColors.primary,
                child: Text(
                  "Verify",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 16.sp,
                        color: MyColors.white,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ),
            fixedVertSpacing(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "00:30 ",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 13.sp,
                        color: MyColors.blue,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                Text(
                  "Sec left",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 13.sp,
                        color: MyColors.grey,
                        fontWeight: FontWeight.w400,
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
