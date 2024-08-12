import 'package:crypto_vallet/utils/constants/padding_constants.dart';
import 'package:crypto_vallet/utils/constants/spacings_sizes.dart';
import 'package:crypto_vallet/utils/theme/myColors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ReceberCodeView extends StatelessWidget {
  const ReceberCodeView({super.key});

  static String routeName = '/receberCode';

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
                fixedHorzSpacing(30),
                Text(
                  "Receber",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 18.sp,
                        color: MyColors.headingColor,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
            fixedVertSpacing(50),
            Text(
              "Escaneie o QRCode abaixo com seu aplicativo de de preferência, ou, copie o código e cole no aplicativo na opção de pagamento via LIGHTINING. ",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 11.sp,
                    color: MyColors.grey,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Work Sans",
                  ),
              textAlign: TextAlign.center,
            ),
            Text(
              "O pagamento leva menos de 1 minuto\n para ser aprovado. ",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 11.sp,
                    color: MyColors.primary,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Work Sans",
                  ),
              textAlign: TextAlign.center,
            ),
            fixedVertSpacing(20),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.sp),
                  color: MyColors.white),
              child: Padding(
                padding: AppPaddings.mediumPadding,
                child: Image.asset(
                  "assets/images/qr-code.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            fixedVertSpacing(20),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.sp),
                  color: MyColors.white),
              child: Padding(
                padding: AppPaddings.mediumPadding,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Valor:",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 15.sp,
                                    color: const Color(0xFF9EA3AE),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Work Sans",
                                  ),
                        ),
                        Text(
                          "R\$ 525,00",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 17.sp,
                                    color: const Color(0xFF777E90),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Work Sans",
                                  ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sats:",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 15.sp,
                                    color: const Color(0xFF9EA3AE),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Work Sans",
                                  ),
                        ),
                        Text(
                          "88.000",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 17.sp,
                                    color: const Color(0xFF777E90),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Work Sans",
                                  ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Bitcoin:",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 15.sp,
                                    color: const Color(0xFF9EA3AE),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Work Sans",
                                  ),
                        ),
                        Text(
                          "R\$ 391.525,00",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 17.sp,
                                    color: const Color(0xFF777E90),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Work Sans",
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            DottedBorder(
              color: MyColors.primary,
              radius: Radius.circular(40.sp),
              borderType: BorderType.RRect,
              dashPattern: [smallIconSize],
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        backgroundColor: MyColors.white,
                        child: Padding(
                          padding: AppPaddings.largePadding,
                          child: SizedBox(
                            width: 335.w,
                            height: 460.h,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/images/congrats.svg",
                                  fit: BoxFit.cover,
                                ),
                                fixedVertSpacing(20),
                                Text(
                                  "Recebido com\nsucesso!",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        fontSize: 25.sp,
                                        color: MyColors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  textAlign: TextAlign.center,
                                ),
                                fixedVertSpacing(15),
                                Text(
                                  "Valor",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        fontSize: 13.sp,
                                        color: MyColors.darkGrey2,
                                        fontWeight: FontWeight.w400,
                                      ),
                                  textAlign: TextAlign.center,
                                ),
                                fixedVertSpacing(15),
                                Text(
                                  "R\$1,436",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        fontSize: 40.sp,
                                        color: MyColors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  textAlign: TextAlign.center,
                                ),
                                fixedVertSpacing(45),
                                SizedBox(
                                  height: 60.h,
                                  width: double.infinity,
                                  child: MaterialButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    color: MyColors.primary,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(40.sp),
                                    ),
                                    child: Text(
                                      "Fechar",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
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
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  height: 56.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.sp),
                    color: const Color(0xFFFFE8CC),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "lnbc290n1pn2zmx6pp5",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 16.sp,
                              color: MyColors.headingColor,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Work Sans",
                            ),
                      ),
                      fixedHorzSpacing(10),
                      SizedBox(
                        height: 25.h,
                        child: VerticalDivider(
                          color: MyColors.white,
                        ),
                      ),
                      fixedHorzSpacing(10),
                      SvgPicture.asset("assets/icons/copy.svg"),
                      fixedHorzSpacing(10),
                      Text(
                        "Copy",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 13.sp,
                              color: MyColors.primary,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Work Sans",
                            ),
                      ),
                    ],
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
