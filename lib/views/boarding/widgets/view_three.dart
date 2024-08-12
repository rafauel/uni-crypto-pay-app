import 'package:crypto_vallet/views/auth/sign_in_view.dart';
import 'package:crypto_vallet/utils/constants/padding_constants.dart';
import 'package:crypto_vallet/utils/constants/spacings_sizes.dart';
import 'package:crypto_vallet/utils/theme/myColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ViewThree extends StatelessWidget {
  const ViewThree({super.key});

  static String routeName = "viewThree";

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.white,
        toolbarHeight: 1,
      ),
      body: Padding(
        padding: AppPaddings.mediumPadding,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Get.toNamed(SignInView.routeName);
                  },
                  child: Text(
                    "Skip",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14.sp,
                          color: MyColors.darkGrey,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              child: SvgPicture.asset(
                "assets/images/viewThree.svg",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: s.height * 0.05,
            ),
            Padding(
              padding: AppPaddings.customSymmetricPadding(h: 5, v: 8),
              child: Column(
                children: [
                  Text(
                    "Keep your wallet software up to date",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 28.sp,
                          color: MyColors.headingColor,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  fixedVertSpacing(25),
                  Text(
                    "Regularly update your wallet software to ensure you have the latest security patches and bug fixes.",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14.sp,
                          color: MyColors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  SizedBox(
                    height: s.height * 0.1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 50.h,
                        child: MaterialButton(
                          onPressed: () {
                            Get.toNamed(SignInView.routeName);
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11.sp)),
                          color: MyColors.primary,
                          child: Text(
                            "Continue",
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
