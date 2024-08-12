import 'package:crypto_vallet/utils/constants/padding_constants.dart';
import 'package:crypto_vallet/utils/constants/spacings_sizes.dart';
import 'package:crypto_vallet/utils/theme/myColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ConverterView extends StatefulWidget {
  const ConverterView({super.key});

  static String routeName = "/converterView";

  @override
  State<ConverterView> createState() => _ConverterViewState();
}

class _ConverterViewState extends State<ConverterView> {
  final TextEditingController _sendAmountController = TextEditingController();

  void _onNumberPress(String number) {
    setState(() {
      _sendAmountController.text += number;
    });
  }

  void _onBackspacePress() {
    if (_sendAmountController.text.isNotEmpty) {
      setState(() {
        _sendAmountController.text = _sendAmountController.text
            .substring(0, _sendAmountController.text.length - 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                height: 35.h,
                width: 35.w,
                decoration: BoxDecoration(
                  border: Border.all(color: MyColors.grey),
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
            fixedHorzSpacing(20),
            Text(
              "Converter",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 18.sp,
                    color: MyColors.black,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: AppPaddings.customSymmetricPadding(h: 15, v: 5),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFE2AC),
                        borderRadius: BorderRadius.circular(24.sp),
                      ),
                      child: Padding(
                        padding:
                            AppPaddings.customSymmetricPadding(h: 10, v: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Send",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        fontSize: 12.sp,
                                        color: MyColors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                                SizedBox(
                                  width: 200.w,
                                  child: TextField(
                                    readOnly: true,
                                    controller: _sendAmountController,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          fontSize: 20.sp,
                                          color: MyColors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      isDense: true,
                                      contentPadding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 65.w,
                              child: DropdownButtonFormField(
                                decoration: const InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.zero,
                                  border: InputBorder.none,
                                ),
                                value: 'BTC',
                                items: ['BTC', 'BRL'].map((e) {
                                  return DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      e,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            fontSize: 14.sp,
                                            color: MyColors.black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (_) {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    fixedVertSpacing(10),
                    const CurrencyInputCard(
                      amount: '1,436.44',
                      currency: 'BRL',
                      backgroundColor: Color(0xFFD5E6BB),
                      status: "Receive",
                    ),
                  ],
                ),
                Positioned(
                  top: 92.0,
                  child: SvgPicture.asset("assets/icons/black-converter.svg"),
                ),
              ],
            ),
            fixedVertSpacing(20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.sp),
                color: const Color(0xFFF5F5F5),
              ),
              child: Padding(
                padding: AppPaddings.customSymmetricPadding(h: 10, v: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Available Portfolio',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 12.sp,
                            color: const Color(0xFF888888),
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    Text(
                      '1,436.44 BTC',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 15.sp,
                            color: MyColors.black,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            fixedVertSpacing(10),
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
                                  "Conversão efetuada com sucesso!",
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
                                  "Você recebeu",
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
                  "Converter",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 16.sp,
                        color: MyColors.white,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Work Sans",
                      ),
                ),
              ),
            ),
            const Spacer(),
            GridView.builder(
              shrinkWrap: true,
              itemCount: 12,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 2.03,
              ),
              itemBuilder: (BuildContext context, int index) {
                if (index == 9) {
                  return const SizedBox.shrink();
                } else if (index == 11) {
                  return IconButton(
                    icon: SvgPicture.asset("assets/icons/delete-arrow.svg"),
                    onPressed: _onBackspacePress,
                  );
                } else {
                  return Container(
                    decoration: BoxDecoration(
                      border: _getBorder(index),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        _onNumberPress(
                            (index == 10) ? '0' : (index + 1).toString());
                      },
                      child: Text(
                        (index == 10) ? '0' : (index + 1).toString(),
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 20.sp,
                              color: MyColors.black,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Border _getBorder(int index) {
    switch (index) {
      case 0:
        return const Border(
            right: BorderSide(color: Color(0xFFEFEFEF)),
            bottom: BorderSide(color: Color(0xFFEFEFEF)));
      case 2:
        return const Border(
            left: BorderSide(color: Color(0xFFEFEFEF)),
            bottom: BorderSide(color: Color(0xFFEFEFEF)));
      case 3:
        return const Border(
            right: BorderSide(color: Color(0xFFEFEFEF)),
            bottom: BorderSide(color: Color(0xFFEFEFEF)));
      case 5:
        return const Border(
            left: BorderSide(color: Color(0xFFEFEFEF)),
            bottom: BorderSide(color: Color(0xFFEFEFEF)));
      case 6:
        return const Border(
            right: BorderSide(color: Color(0xFFEFEFEF)),
            bottom: BorderSide(color: Color(0xFFEFEFEF)));
      case 8:
        return const Border(
            left: BorderSide(color: Color(0xFFEFEFEF)),
            bottom: BorderSide(color: Color(0xFFEFEFEF)));
      case 10:
        return const Border(
            right: BorderSide(color: Color(0xFFEFEFEF)),
            left: BorderSide(color: Color(0xFFEFEFEF)));
      case 1:
      case 4:
      case 7:
        return const Border(
          bottom: BorderSide(color: Color(0xFFEFEFEF)),
        );
      default:
        return Border.all(color: Colors.transparent);
    }
  }
}

class CurrencyInputCard extends StatelessWidget {
  final String amount;
  final String currency;
  final Color backgroundColor;
  final String status;

  const CurrencyInputCard({
    super.key,
    required this.amount,
    required this.currency,
    required this.backgroundColor,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(24.sp),
      ),
      child: Padding(
        padding: AppPaddings.customSymmetricPadding(h: 10, v: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  status,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 12.sp,
                        color: MyColors.black,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  amount,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 20.sp,
                        color: MyColors.black,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
            SizedBox(
              width: 65.w,
              child: DropdownButtonFormField(
                decoration: const InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                  border: InputBorder.none,
                ),
                value: currency,
                items: ['BTC', 'BRL'].map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(
                      e,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 14.sp,
                            color: MyColors.black,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
