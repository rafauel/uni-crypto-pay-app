import 'package:crypto_vallet/utils/constants/padding_constants.dart';
import 'package:crypto_vallet/utils/constants/spacings_sizes.dart';
import 'package:crypto_vallet/utils/theme/myColors.dart';
import 'package:crypto_vallet/utils/widget/custom_txtfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  static String routeName = "/settingView";

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  bool isSwitched = false;
  String selectedItem = "Tipo de Chave Pix";
  List<DropdownMenuItem<String>> get DropdownMenuItems {
    return [
      DropdownMenuItem(
        value: "Tipo de Chave Pix",
        child: Text(
          "Tipo de Chave Pix",
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 14.sp,
                color: MyColors.headingColor,
                fontWeight: FontWeight.w500,
                fontFamily: "Work Sans",
              ),
        ),
      ),
      DropdownMenuItem(
        value: "Tipo de",
        child: Text(
          "Tipo de",
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 14.sp,
                color: MyColors.headingColor,
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
                const Spacer(),
                Text(
                  "Settings",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 18.sp,
                        color: MyColors.headingColor,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Work Sans",
                      ),
                ),
                const Spacer(),
                CircleAvatar(
                  backgroundColor: MyColors.bgColor,
                ),
              ],
            ),
            fixedVertSpacing(40),
            Container(
              decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.circular(24.sp)),
              child: Padding(
                padding: AppPaddings.customSymmetricPadding(h: 10, v: 15),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: SvgPicture.asset("assets/icons/compare.svg"),
                  title: Text(
                    "Converter Automatico",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14.sp,
                          color: MyColors.headingColor,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Work Sans",
                        ),
                  ),
                  subtitle: Text(
                    "Converter btc em brl ao receber",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 12.sp,
                          color: MyColors.grey,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Work Sans",
                        ),
                  ),
                  trailing: Switch(
                    value: isSwitched,
                    onChanged: (bool value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                    activeTrackColor: MyColors.primary,
                    activeColor: Colors.white,
                    inactiveThumbColor: MyColors.white,
                    inactiveTrackColor: MyColors.lightGrey,
                    trackOutlineColor:
                        const MaterialStatePropertyAll(Colors.transparent),
                  ),
                ),
              ),
            ),
            fixedVertSpacing(20),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.sp),
                  color: MyColors.white),
              child: Padding(
                padding: AppPaddings.customSymmetricPadding(h: 10, v: 15),
                child: SizedBox(
                  width: getSize(context).width,
                  child: DropdownButtonFormField(
                    borderRadius: BorderRadius.all(Radius.circular(24.sp)),
                    icon: PhosphorIcon(
                      PhosphorIcons.caretDown(),
                      color: MyColors.black,
                      size: 20.sp,
                    ),
                    dropdownColor: MyColors.white,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 0.h),
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide.none),
                      focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide.none),
                    ),
                    value: selectedItem,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedItem = newValue!;
                      });
                    },
                    items: DropdownMenuItems,
                  ),
                ),
              ),
            ),
            fixedVertSpacing(20),
            const CustomLabelTextField(
                label: "Chave Pix",
                hint: "084.709.299.25",
                icon: "assets/icons/user.svg"),
            fixedVertSpacing(50),
            SizedBox(
              height: 60.h,
              width: double.infinity,
              child: MaterialButton(
                onPressed: () {
                  // Get.offAllNamed(SignInView.routeName);
                },
                color: MyColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.sp),
                ),
                child: Text(
                  "Save Changes",
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
