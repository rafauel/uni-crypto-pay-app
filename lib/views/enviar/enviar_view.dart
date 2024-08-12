import 'package:crypto_vallet/views/enviar/enviar_extrato.dart';
import 'package:crypto_vallet/utils/constants/padding_constants.dart';
import 'package:crypto_vallet/utils/constants/spacings_sizes.dart';
import 'package:crypto_vallet/utils/theme/myColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'qr_scanner_view.dart';

class EnviarView extends StatelessWidget {
  const EnviarView({super.key});

  static String routeName = '/enviarView';

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
                          "Enviar",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 18.sp,
                                    color: MyColors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ],
                    ),
                    fixedVertSpacing(60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Informe o valor em ",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 14.sp,
                                    color: MyColors.grey,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        Text(
                          "BRL ",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 14.sp,
                                    color: MyColors.primary,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        Text(
                          "para gerar o QrCode",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 14.sp,
                                    color: MyColors.grey,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "de recebimento em",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 14.sp,
                                    color: MyColors.grey,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        Text(
                          " BTC!",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 14.sp,
                                    color: MyColors.primary,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    ),
                    fixedVertSpacing(20),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11.sp),
                        color: const Color(0xFFF5F5F5),
                      ),
                      child: ListTile(
                        leading: SvgPicture.asset("assets/icons/bitcoin.svg"),
                        title: Text(
                          "BTC",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 13.sp,
                                    color: MyColors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        trailing: PhosphorIcon(
                          PhosphorIcons.caretRight(),
                          color: MyColors.grey,
                        ),
                      ),
                    ),
                    fixedVertSpacing(20),
                    Text(
                      "To",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 16.sp,
                            color: MyColors.black,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    fixedVertSpacing(5),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "13agdGAFDe...3SmkjUYR",
                        hintStyle:
                            Theme.of(context).textTheme.bodySmall!.copyWith(
                                  fontSize: 13.sp,
                                  color: MyColors.grey,
                                  fontWeight: FontWeight.w500,
                                ),
                        suffixIcon: Padding(
                          padding: AppPaddings.mediumPadding,
                          child: InkWell(
                            onTap: () {
                              Get.toNamed(QrScannerView.routeName);
                            },
                            child: SvgPicture.asset("assets/icons/qr.svg"),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11.sp),
                          borderSide: const BorderSide(
                            color: Color(0xFFDDDDDD),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11.sp),
                          borderSide: const BorderSide(
                            color: Color(0xFFDDDDDD),
                          ),
                        ),
                      ),
                    ),
                    fixedVertSpacing(20),
                    Text(
                      "Amount",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 16.sp,
                            color: MyColors.black,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    fixedVertSpacing(5),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "0,0386",
                        hintStyle:
                            Theme.of(context).textTheme.bodySmall!.copyWith(
                                  fontSize: 13.sp,
                                  color: MyColors.grey,
                                  fontWeight: FontWeight.w500,
                                ),
                        suffixIcon: Padding(
                          padding: AppPaddings.smallPadding,
                          child: SvgPicture.asset("assets/icons/cross.svg"),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11.sp),
                          borderSide: const BorderSide(
                            color: Color(0xFFDDDDDD),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11.sp),
                          borderSide: const BorderSide(
                            color: Color(0xFFDDDDDD),
                          ),
                        ),
                      ),
                    ),
                    fixedVertSpacing(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Balance: ",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 13.sp,
                                    color: MyColors.grey,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        Text(
                          "0,245364 BTC",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 13.sp,
                                    color: MyColors.grey,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ],
                    ),
                    fixedVertSpacing(60),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 60.h,
              width: double.infinity,
              child: MaterialButton(
                onPressed: () {
                  Get.toNamed(EnviarExtratoView.routeName);
                },
                color: MyColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.sp),
                ),
                child: Text(
                  "Continue",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 16.sp,
                        color: MyColors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Work Sans",
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
