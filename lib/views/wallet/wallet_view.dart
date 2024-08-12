import 'package:crypto_vallet/utils/constants/padding_constants.dart';
import 'package:crypto_vallet/utils/constants/spacings_sizes.dart';
import 'package:crypto_vallet/utils/theme/myColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class WalletView extends StatelessWidget {
  const WalletView({super.key});

  static String routeName = "/walletView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgColor,
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
                  "Retirar",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 18.sp,
                        color: MyColors.black,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
            fixedVertSpacing(50),
            SvgPicture.asset("assets/images/email.svg"),
            fixedVertSpacing(50),
            Text(
              "Solicitação de saque efetuada com sucesso.Vamos enviar para sua conta baáriao quanto antes, acompanhe seu extrato.",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 14.sp,
                    color: MyColors.grey,
                    fontWeight: FontWeight.w400,
                  ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
