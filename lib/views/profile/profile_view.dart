import 'package:crypto_vallet/views/auth/sign_in_view.dart';
import 'package:crypto_vallet/views/profile/account_setting_view.dart';
import 'package:crypto_vallet/views/profile/support_view.dart';
import 'package:crypto_vallet/views/settings/settings_view.dart';
import 'package:crypto_vallet/utils/constants/padding_constants.dart';
import 'package:crypto_vallet/utils/constants/spacings_sizes.dart';
import 'package:crypto_vallet/utils/theme/myColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgColor,
      body: Padding(
        padding: AppPaddings.largePadding,
        child: SingleChildScrollView(
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
                    "Profile",
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
              fixedVertSpacing(5),
              ClipOval(
                child: Image.asset(
                  "assets/images/dp.png",
                  fit: BoxFit.cover,
                  width: 100.w,
                  height: 100.h,
                ),
              ),
              fixedVertSpacing(10),
              Text(
                "Alex Rutuynos",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 22.sp,
                      color: MyColors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Work Sans",
                    ),
              ),
              Text(
                "Alexrutuynos@gmail.com",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 16.sp,
                      color: MyColors.darkGrey,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Work Sans",
                    ),
              ),
              fixedVertSpacing(15),
              InkWell(
                onTap: () {
                  Get.toNamed(AccountSetting.routeName);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.sp),
                    color: MyColors.white,
                  ),
                  child: Padding(
                    padding: AppPaddings.customSymmetricPadding(h: 16, v: 8),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        backgroundColor: const Color(0XFFFFE8CC),
                        child: SvgPicture.asset("assets/icons/user-fill.svg"),
                      ),
                      title: Text(
                        "Account",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 16.sp,
                              color: MyColors.headingColor,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Work Sans",
                            ),
                      ),
                      trailing: PhosphorIcon(
                        PhosphorIcons.caretRight(),
                        color: MyColors.darkGrey,
                      ),
                    ),
                  ),
                ),
              ),
              fixedVertSpacing(10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.sp),
                  color: MyColors.white,
                ),
                child: Padding(
                  padding: AppPaddings.customSymmetricPadding(h: 16, v: 8),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    leading: CircleAvatar(
                      backgroundColor: const Color(0XFFFFE8CC),
                      child: SvgPicture.asset("assets/icons/language.svg"),
                    ),
                    title: Text(
                      "Language",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 16.sp,
                            color: MyColors.headingColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Work Sans",
                          ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "English",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 14.sp,
                                    color: MyColors.grey,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Work Sans",
                                  ),
                        ),
                        fixedHorzSpacing(5),
                        PhosphorIcon(
                          PhosphorIcons.caretRight(),
                          color: MyColors.darkGrey,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              fixedVertSpacing(10),
              InkWell(
                onTap: () {
                  Get.toNamed(SettingsView.routeName);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.sp),
                    color: MyColors.white,
                  ),
                  child: Padding(
                    padding: AppPaddings.customSymmetricPadding(h: 16, v: 8),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        backgroundColor: const Color(0XFFFFE8CC),
                        child:
                            SvgPicture.asset("assets/icons/setting-fill.svg"),
                      ),
                      title: Text(
                        "Settings",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 16.sp,
                              color: MyColors.headingColor,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Work Sans",
                            ),
                      ),
                      trailing: PhosphorIcon(
                        PhosphorIcons.caretRight(),
                        color: MyColors.darkGrey,
                      ),
                    ),
                  ),
                ),
              ),
              fixedVertSpacing(10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.sp),
                  color: MyColors.white,
                ),
                child: Padding(
                  padding: AppPaddings.customSymmetricPadding(h: 16, v: 8),
                  child: ListTile(
                    onTap: () {
                      Get.toNamed(SupportView.routeName);
                    },
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      backgroundColor: const Color(0XFFFFE8CC),
                      child: SvgPicture.asset("assets/icons/support.svg"),
                    ),
                    title: Text(
                      "Suporte",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 16.sp,
                            color: MyColors.headingColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Work Sans",
                          ),
                    ),
                    trailing: PhosphorIcon(
                      PhosphorIcons.caretRight(),
                      color: MyColors.darkGrey,
                    ),
                  ),
                ),
              ),
              fixedVertSpacing(10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.sp),
                  color: MyColors.white,
                ),
                child: Padding(
                  padding: AppPaddings.customSymmetricPadding(h: 16, v: 8),
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Text(
                      "Wallet Id:",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 12.sp,
                            color: MyColors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    title: Text(
                      "n1pn2z3242mx6890pp5",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 16.sp,
                            color: MyColors.headingColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Work Sans",
                          ),
                    ),
                    trailing: SvgPicture.asset("assets/icons/copy.svg"),
                  ),
                ),
              ),
              fixedVertSpacing(15),
              SizedBox(
                height: 60.h,
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {
                    Get.offAllNamed(SignInView.routeName);
                  },
                  color: MyColors.headingColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.sp),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/icons/sign-out.svg"),
                      fixedHorzSpacing(10),
                      Text(
                        "Sign Out",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 16.sp,
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
        ),
      ),
    );
  }
}
