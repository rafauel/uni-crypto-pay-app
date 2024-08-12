import 'package:crypto_vallet/views/extrato/extrato_view.dart';
import 'package:crypto_vallet/utils/constants/spacings_sizes.dart';
import 'package:crypto_vallet/utils/theme/myColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class StockTile extends StatelessWidget {
  final String icon;
  final String title;
  final String date;
  final String time;
  final String rate;
  final Color rateColor;
  const StockTile({
    super.key,
    required this.icon,
    required this.title,
    required this.date,
    required this.time,
    required this.rate,
    required this.rateColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(ExtratoView.routeName);
      },
      child: ListTile(
        dense: true,
        contentPadding: const EdgeInsets.all(5),
        leading: CircleAvatar(
          backgroundColor: MyColors.circleAvatar,
          child: SvgPicture.asset(icon),
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 15.sp,
              color: MyColors.greyTxtColor,
              fontWeight: FontWeight.w500,
              fontFamily: "Work Sans"),
        ),
        subtitle: Row(
          children: [
            Text(
              date,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 13.sp,
                  color: MyColors.grey,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Work Sans"),
            ),
            fixedHorzSpacing(5),
            Text(
              time,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 13.sp,
                  color: MyColors.grey,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Work Sans"),
            ),
          ],
        ),
        trailing: Text(
          rate,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 14.sp,
              color: rateColor,
              fontWeight: FontWeight.w500,
              fontFamily: "Work Sans"),
        ),
      ),
    );
  }
}
