import 'package:crypto_vallet/utils/constants/padding_constants.dart';
import 'package:crypto_vallet/utils/constants/spacings_sizes.dart';
import 'package:crypto_vallet/utils/theme/myColors.dart';
import 'package:crypto_vallet/utils/widget/extrato.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ExtratoView extends StatelessWidget {
  const ExtratoView({super.key});

  static String routeName = '/extratoView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Padding(
        padding: AppPaddings.largePadding,
        child: Column(
          children: [
            fixedVertSpacing(20),
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
                fixedHorzSpacing(30),
                Text(
                  "Extrato",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 18.sp,
                        color: MyColors.black,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
            fixedVertSpacing(50),
            const Extrato(),
            fixedVertSpacing(50),
            SizedBox(
              height: 60.h,
              width: double.infinity,
              child: MaterialButton(
                onPressed: () {
                  //  Get.toNamed(ReceberCodeView.routeName);
                },
                color: MyColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.sp),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/icons/download.svg"),
                    fixedHorzSpacing(15),
                    Text(
                      "Baixar",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 16.sp,
                            color: MyColors.white,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Work Sans",
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
