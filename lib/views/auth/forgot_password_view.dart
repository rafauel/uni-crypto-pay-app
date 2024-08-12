import 'package:crypto_vallet/views/auth/email_verification_view.dart';
import 'package:crypto_vallet/utils/constants/padding_constants.dart';
import 'package:crypto_vallet/utils/constants/spacings_sizes.dart';
import 'package:crypto_vallet/utils/theme/myColors.dart';
import 'package:crypto_vallet/utils/widget/custom_txtfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  static String routeName = "/forgotPassword";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Padding(
        padding: AppPaddings.largePadding,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    fixedVertSpacing(30),
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
                          "Forgot Password",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
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
                    fixedVertSpacing(80),
                    Text(
                      "Enter the email associated with your account and we’ll send an email with instructions to reset your password.",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 14.sp,
                            color: MyColors.grey,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    fixedVertSpacing(100),
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
                    SizedBox(
                      height: 50.h,
                      width: double.infinity,
                      child: MaterialButton(
                        onPressed: () {
                          Get.toNamed(EmailVerificationView.routeName);
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11.sp)),
                        color: MyColors.primary,
                        child: Text(
                          "Send",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
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
            GestureDetector(
              onTap: () {},
              child: Text(
                "Back to again",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 13.sp,
                      color: MyColors.blue,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            fixedVertSpacing(10),
          ],
        ),
      ),
    );
  }
}
