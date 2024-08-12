import 'package:crypto_vallet/utils/constants/padding_constants.dart';
import 'package:crypto_vallet/utils/constants/spacings_sizes.dart';
import 'package:crypto_vallet/utils/theme/myColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Extrato extends StatelessWidget {
  const Extrato({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.sp),
          color: const Color(0xFFF5F5F5)),
      child: Padding(
        padding: AppPaddings.mediumPadding,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Valor em Sats:",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 14.sp,
                        color: MyColors.primary,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Work Sans",
                      ),
                ),
                Text(
                  "58 sats",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 12.sp,
                        color: MyColors.primary,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Work Sans",
                      ),
                ),
              ],
            ),
            fixedVertSpacing(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Valor Atual:",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 14.sp,
                        color: MyColors.primary,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Work Sans",
                      ),
                ),
                Text(
                  "R\$ 525,00",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 12.sp,
                        color: MyColors.primary,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Work Sans",
                      ),
                ),
              ],
            ),
            fixedVertSpacing(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Data:",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 14.sp,
                        color: const Color(0xFF9EA3AE),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Work Sans",
                      ),
                ),
                Text(
                  "24/07/2024 18:36:44",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 12.sp,
                        color: const Color(0xFF777E90),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Work Sans",
                      ),
                ),
              ],
            ),
            fixedVertSpacing(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Pagador:",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 14.sp,
                        color: const Color(0xFF9EA3AE),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Work Sans",
                      ),
                ),
                Text(
                  "028d98b9969fbed53...",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 12.sp,
                        color: const Color(0xFF777E90),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Work Sans",
                      ),
                ),
              ],
            ),
            fixedVertSpacing(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Expira em:",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 14.sp,
                        color: const Color(0xFF9EA3AE),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Work Sans",
                      ),
                ),
                Text(
                  "0h 8m 7s",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 12.sp,
                        color: const Color(0xFF777E90),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Work Sans",
                      ),
                ),
              ],
            ),
            fixedVertSpacing(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Descrição:",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 14.sp,
                        color: const Color(0xFF9EA3AE),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Work Sans",
                      ),
                ),
                Text(
                  "Payment request for \$0.22",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 12.sp,
                        color: const Color(0xFF777E90),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Work Sans",
                      ),
                ),
              ],
            ),
            fixedVertSpacing(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Taxa:",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 14.sp,
                        color: const Color(0xFF9EA3AE),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Work Sans",
                      ),
                ),
                Text(
                  "Sem Taxa",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 12.sp,
                        color: const Color(0xFF777E90),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Work Sans",
                      ),
                ),
              ],
            ),
            fixedVertSpacing(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hash:",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 14.sp,
                        color: const Color(0xFF9EA3AE),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Work Sans",
                      ),
                ),
                Text(
                  "031b058f6a675c7c3..",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 12.sp,
                        color: const Color(0xFF777E90),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Work Sans",
                      ),
                ),
              ],
            ),
            fixedVertSpacing(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cotação Atual:",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 14.sp,
                        color: const Color(0xFF9EA3AE),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Work Sans",
                      ),
                ),
                Text(
                  "R\$ 370.821,0026s",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 12.sp,
                        color: MyColors.green,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Work Sans",
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
