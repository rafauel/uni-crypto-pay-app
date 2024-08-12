import 'package:crypto_vallet/utils/constants/spacings_sizes.dart';
import 'package:crypto_vallet/utils/theme/myColors.dart';
import 'package:crypto_vallet/views/wallet/wallet_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../utils/constants/padding_constants.dart';

class TransferView extends StatefulWidget {
  const TransferView({super.key});

  static String routeName = "/transferView";

  @override
  State<TransferView> createState() => _TransferViewState();
}

class _TransferViewState extends State<TransferView> {
  String _inputValue = '';

  void _onNumberPress(String value) {
    setState(() {
      _inputValue += value;
    });
  }

  void _onBackspacePress() {
    setState(() {
      if (_inputValue.isNotEmpty) {
        _inputValue = _inputValue.substring(0, _inputValue.length - 1);
      }
    });
  }

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
                const Spacer(),
                Text(
                  "Retirar",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 18.sp,
                        color: MyColors.black,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const Spacer(),
                CircleAvatar(
                  backgroundColor: MyColors.white,
                ),
              ],
            ),
            fixedVertSpacing(15),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13.sp),
                  color: const Color(0xFFF5F5F5)),
              child: Padding(
                padding: AppPaddings.customSymmetricPadding(h: 10, v: 10),
                child: ListTile(
                  leading: Image.asset(
                    "assets/icons/transfer.png",
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    "Chave Pix",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 13.sp,
                          color: MyColors.black,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  subtitle: Text(
                    "6516-5151656-5561651",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 13.sp,
                          color: MyColors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ),
              ),
            ),
            fixedVertSpacing(5),
            Row(
              children: [
                Text(
                  "Gostaria de alterar a chave pix?",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 11.sp,
                        color: MyColors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                ),
                Text(
                  " alterar",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 11.sp,
                        color: MyColors.blue,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
            fixedVertSpacing(15),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13.sp),
                  color: const Color(0xFFF5F5F5)),
              child: Padding(
                padding: AppPaddings.customSymmetricPadding(h: 15, v: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Saldo em Reais:",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 12.sp,
                                    color: const Color(0xFF888888),
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        Text(
                          "R\$ 1,436.44",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 15.sp,
                                    color: MyColors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    ),
                    fixedVertSpacing(15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Saldo em BTC",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 12.sp,
                                    color: const Color(0xFF888888),
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        Text(
                          "0.00000556",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 15.sp,
                                    color: MyColors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            fixedVertSpacing(10),
            Text(
              "Para retirada você deve considerar o valor em Real. Caso queira sacar o saldo em BTC para sua conta bancaria Faça a conversão antes",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 10.sp,
                    color: MyColors.grey,
                    fontWeight: FontWeight.w400,
                  ),
            ),
            Spacer(),
            TextField(
              readOnly: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                border: InputBorder.none,
                hintText: 'R\$ ${_inputValue.isEmpty ? '0' : _inputValue}',
                hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 50.sp,
                      color: MyColors.black,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              textAlign: TextAlign.center,
            ),
            NumericPad(
              onNumberPress: _onNumberPress,
              onBackspacePress: _onBackspacePress,
            ),
            fixedVertSpacing(10),
            SizedBox(
              height: 60.h,
              width: double.infinity,
              child: MaterialButton(
                onPressed: () {
                  Get.toNamed(WalletView.routeName);
                },
                color: MyColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.sp),
                ),
                child: Text(
                  "Sacar",
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

class NumericPad extends StatelessWidget {
  final Function(String) onNumberPress;
  final VoidCallback onBackspacePress;

  const NumericPad({
    super.key,
    required this.onNumberPress,
    required this.onBackspacePress,
  });

  @override
  Widget build(BuildContext context) {
    const int itemCount = 12;

    return GridView.builder(
      shrinkWrap: true,
      itemCount: itemCount,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 2.45,
      ),
      itemBuilder: (BuildContext context, int index) {
        if (index == 9) {
          return Center(
            child: Text(
              ".",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 24.sp,
                    color: MyColors.headingColor,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Work Sans",
                  ),
            ),
          );
        } else if (index == 11) {
          return IconButton(
            icon: SvgPicture.asset("assets/icons/delete-arrow.svg"),
            onPressed: onBackspacePress,
          );
        } else {
          return MaterialButton(
            onPressed: () {
              onNumberPress(index == 10 ? '0' : (index + 1).toString());
            },
            child: Text(
              index == 10 ? '0' : (index + 1).toString(),
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 24.sp,
                    color: MyColors.headingColor,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Work Sans",
                  ),
            ),
          );
        }
      },
    );
  }
}
