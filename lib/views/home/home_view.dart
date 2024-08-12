import 'package:crypto_vallet/views/converter/converter_view.dart';
import 'package:crypto_vallet/views/enviar/enviar_view.dart';
import 'package:crypto_vallet/views/home/widget/stock_tiles.dart';
import 'package:crypto_vallet/views/receber/receber_view.dart';
import 'package:crypto_vallet/views/retirar/transfer_view.dart';
import 'package:crypto_vallet/utils/constants/padding_constants.dart';
import 'package:crypto_vallet/utils/constants/spacings_sizes.dart';
import 'package:crypto_vallet/utils/theme/myColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String selectedCurrency = "BRL";
  bool isBalanceVisible = true; // State to track balance visibility

  List<DropdownMenuItem<String>> get currencyDropdownItems {
    return [
      DropdownMenuItem(
        value: "BRL",
        child: Text(
          "BRL",
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 14.sp,
                color: MyColors.primary,
                fontWeight: FontWeight.w500,
                fontFamily: "Work Sans",
              ),
        ),
      ),
      DropdownMenuItem(
        value: "BTC",
        child: Text(
          "BTC",
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 14.sp,
                color: MyColors.primary,
                fontWeight: FontWeight.w500,
                fontFamily: "Work Sans",
              ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgColor,
      body: Padding(
        padding: AppPaddings.largePadding,
        child: Column(
          children: [
            fixedVertSpacing(30),
            Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    "assets/images/dp.png",
                    fit: BoxFit.cover,
                    height: 40.h,
                    width: 40.h,
                  ),
                ),
                fixedHorzSpacing(20),
                Text(
                  "Alex Rutuynos",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 18.sp,
                        color: MyColors.headingColor,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Work Sans",
                      ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isBalanceVisible = !isBalanceVisible;
                    });
                  },
                  child: Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.sp),
                      color: MyColors.black,
                    ),
                    child: PhosphorIcon(
                      isBalanceVisible
                          ? PhosphorIcons.eye()
                          : PhosphorIcons.eyeSlash(),
                      color: MyColors.white,
                    ),
                  ),
                ),
              ],
            ),
            fixedVertSpacing(25),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.sp),
                color: MyColors.white,
              ),
              child: Padding(
                padding: EdgeInsets.all(10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Total Wallet Balance",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 12.sp,
                                    color: MyColors.headingColor,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Work Sans",
                                  ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: DropdownButtonFormField(
                            icon: PhosphorIcon(
                              PhosphorIcons.caretDown(),
                              color: MyColors.primary,
                              size: 20.sp,
                            ),
                            dropdownColor: MyColors.white,
                            decoration: InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 0.h),
                              enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide.none),
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                            value: selectedCurrency,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedCurrency = newValue!;
                              });
                            },
                            items: currencyDropdownItems,
                          ),
                        ),
                      ],
                    ),
                    fixedVertSpacing(10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          isBalanceVisible ? "\$6641.20" : "\$****",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 32.sp,
                                    color: MyColors.headingColor,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Work Sans",
                                  ),
                        ),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.sp),
                            color: MyColors.green,
                          ),
                          child: Padding(
                            padding:
                                AppPaddings.customSymmetricPadding(h: 12, v: 8),
                            child: Row(
                              children: [
                                SvgPicture.asset("assets/icons/caret-up.svg"),
                                fixedHorzSpacing(7),
                                Text(
                                  "+13%",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        fontSize: 14.sp,
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
                  ],
                ),
              ),
            ),
            fixedVertSpacing(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Get.toNamed(EnviarView.routeName);
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 70.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.sp),
                          color: MyColors.white,
                        ),
                        child: Padding(
                          padding: AppPaddings.largePadding,
                          child: SvgPicture.asset("assets/icons/arrow-up.svg"),
                        ),
                      ),
                      fixedVertSpacing(5),
                      Text(
                        "Enviar",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 12.sp,
                              color: MyColors.black,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(ReceberView.routeName);
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 70.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.sp),
                          color: MyColors.white,
                        ),
                        child: Padding(
                          padding: AppPaddings.largePadding,
                          child:
                              SvgPicture.asset("assets/icons/arrow-down.svg"),
                        ),
                      ),
                      fixedVertSpacing(5),
                      Text(
                        "Receber",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 12.sp,
                              color: MyColors.black,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(ConverterView.routeName);
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 70.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.sp),
                          color: MyColors.white,
                        ),
                        child: Padding(
                          padding: AppPaddings.largePadding,
                          child: SvgPicture.asset("assets/icons/Swap.svg"),
                        ),
                      ),
                      fixedVertSpacing(5),
                      Text(
                        "Converter",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 12.sp,
                              color: MyColors.black,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(TransferView.routeName);
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 70.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.sp),
                          color: MyColors.white,
                        ),
                        child: Padding(
                          padding: AppPaddings.largePadding,
                          child: SvgPicture.asset("assets/icons/vallet.svg"),
                        ),
                      ),
                      fixedVertSpacing(5),
                      Text(
                        "Retirar",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 12.sp,
                              color: MyColors.black,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            fixedVertSpacing(15),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.sp),
                  color: MyColors.white,
                ),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        fixedVertSpacing(10),
                        StockTile(
                          icon: "assets/icons/arrow-down.svg",
                          title: "Recebido BRL",
                          date: "20/03/2024",
                          time: "22:50",
                          rate: isBalanceVisible ? "+400.39 BRL" : "****",
                          rateColor: MyColors.green,
                        ),
                        SizedBox(
                          width: 220.w,
                          child: Divider(
                            color: MyColors.lightGrey,
                          ),
                        ),
                        StockTile(
                          icon: "assets/icons/Trade.svg",
                          title: "Conversão BRL",
                          date: "20/03/2024",
                          time: "22:50",
                          rate: isBalanceVisible ? "-400.39 BRL" : "****",
                          rateColor: MyColors.lightRed,
                        ),
                        SizedBox(
                          width: 220.w,
                          child: Divider(
                            color: MyColors.lightGrey,
                          ),
                        ),
                        StockTile(
                          icon: "assets/icons/Trade.svg",
                          title: "Conversão BRL",
                          date: "20/03/2024",
                          time: "22:50",
                          rate: isBalanceVisible ? "+400.39 BRL" : "****",
                          rateColor: MyColors.green,
                        ),
                        SizedBox(
                          width: 220.w,
                          child: Divider(
                            color: MyColors.lightGrey,
                          ),
                        ),
                        StockTile(
                          icon: "assets/icons/small-vallet.svg",
                          title: "Saque BRL",
                          date: "20/03/2024",
                          time: "22:50",
                          rate: isBalanceVisible ? "-400.39 BRL" : "****",
                          rateColor: MyColors.lightRed,
                        ),
                        fixedVertSpacing(10),
                      ],
                    ),
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
