import 'package:crypto_vallet/utils/constants/padding_constants.dart';
import 'package:crypto_vallet/utils/constants/spacings_sizes.dart';
import 'package:crypto_vallet/utils/theme/myColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SupportView extends StatelessWidget {
  const SupportView({super.key});

  static String routeName = "/supportView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgColor,
      body: Padding(
        padding: AppPaddings.largePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            fixedVertSpacing(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: CircleAvatar(
                    backgroundColor: MyColors.white,
                    child: PhosphorIcon(PhosphorIcons.arrowLeft()),
                  ),
                ),
                const Spacer(),
                Text(
                  "Suporte",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 18.sp,
                        color: MyColors.headingColor,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Work Sans",
                      ),
                ),
                const Spacer(),
                CircleAvatar(
                  backgroundColor: MyColors.bgColor,
                ),
              ],
            ),
            fixedVertSpacing(40),
            Center(child: SvgPicture.asset("assets/images/support.svg")),
            fixedVertSpacing(40),
            Text(
              "One way keep account secure with 2-step verification, which requires phone number.",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 14.sp,
                    color: const Color(0XFF777E90),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Work Sans",
                  ),
            ),
            fixedVertSpacing(20),
            Text(
              "One way keep account secure with 2-step verification, which requires phone number.",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 14.sp,
                    color: const Color(0XFF777E90),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Work Sans",
                  ),
            ),
            fixedVertSpacing(20),
            Text(
              "One way keep account secure with 2-step verification, which requires phone number.",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 14.sp,
                    color: const Color(0XFF777E90),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Work Sans",
                  ),
            ),
            fixedVertSpacing(20),
            Text(
              "One way keep account secure with 2-step verification, which requires phone number.",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 14.sp,
                    color: const Color(0XFF777E90),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Work Sans",
                  ),
            ),
            fixedVertSpacing(20),
            Text(
              "One way keep account secure with 2-step verification, which requires phone number.",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 14.sp,
                    color: const Color(0XFF777E90),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Work Sans",
                  ),
            ),
            fixedVertSpacing(20),
            Text(
              "One way keep account secure with 2-step verification, which requires phone number.",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 14.sp,
                    color: const Color(0XFF777E90),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Work Sans",
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
