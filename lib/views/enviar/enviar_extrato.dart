import 'package:crypto_vallet/utils/constants/padding_constants.dart';
import 'package:crypto_vallet/utils/constants/spacings_sizes.dart';
import 'package:crypto_vallet/utils/theme/myColors.dart';
import 'package:crypto_vallet/utils/widget/extrato.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class EnviarExtratoView extends StatelessWidget {
  const EnviarExtratoView({super.key});

  static String routeName = '/enviarExtrato';

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
                  "Enviar Extrato",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 18.sp,
                        color: MyColors.black,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
            fixedVertSpacing(60),
            const Extrato(),
            fixedVertSpacing(30),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.sp),
                color: const Color(0xFFF5F5F5),
              ),
              child: Padding(
                padding: AppPaddings.customSymmetricPadding(h: 10, v: 20),
                child: Column(
                  children: [
                    Text(
                      "O valor em BRL pode ser diferente do requisitado, pois cada corretora pratica um valor diferente da cotação do BTC. \n\nPor este motivo o valor em SATs sempre será fixo respeitando a quantidade inicial requisitada.",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 10.sp,
                            color: MyColors.grey,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            fixedVertSpacing(30),
            SizedBox(
              height: 60.h,
              width: double.infinity,
              child: MaterialButton(
                onPressed: () {
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
                                  "Enviado com \nsucesso!",
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
                color: MyColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.sp),
                ),
                child: Text(
                  "Confirmar",
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
