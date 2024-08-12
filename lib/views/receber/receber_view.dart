import 'package:crypto_vallet/views/receber/receber_code_view.dart';
import 'package:crypto_vallet/utils/constants/padding_constants.dart';
import 'package:crypto_vallet/utils/constants/spacings_sizes.dart';
import 'package:crypto_vallet/utils/theme/myColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ReceberView extends StatefulWidget {
  const ReceberView({super.key});

  static String routeName = '/receberView';

  @override
  _ReceberViewState createState() => _ReceberViewState();
}

class _ReceberViewState extends State<ReceberView> {
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
      backgroundColor: MyColors.bgColor,
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: Column(
              children: [
                fixedVertSpacing(20),
                Padding(
                  padding: AppPaddings.largePadding,
                  child: Row(
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
                ),
                fixedVertSpacing(60),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
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
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.54,
              decoration: BoxDecoration(
                color: MyColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32.sp),
                  topRight: Radius.circular(32.sp),
                ),
              ),
              child: Padding(
                padding: AppPaddings.largePadding,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "Qual valor?",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 13.sp,
                              color: MyColors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      fixedVertSpacing(5),
                      TextField(
                        readOnly: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          border: InputBorder.none,
                          hintText:
                              'R\$ ${_inputValue.isEmpty ? '0' : _inputValue}',
                          hintStyle:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
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
                            Get.toNamed(ReceberCodeView.routeName);
                          },
                          color: MyColors.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.sp),
                          ),
                          child: Text(
                            "Continue",
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
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
            ),
          ),
        ],
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
        childAspectRatio: 2.03,
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
