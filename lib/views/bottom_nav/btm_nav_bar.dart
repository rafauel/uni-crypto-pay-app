import 'package:crypto_vallet/views/home/home_view.dart';
import 'package:crypto_vallet/views/profile/profile_view.dart';
import 'package:crypto_vallet/views/settings/settings_view.dart';
import 'package:crypto_vallet/utils/theme/myColors.dart';
import 'package:crypto_vallet/views/wallet/wallet_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class BottomNavigationController extends GetxController {
  RxInt selectedTab = 0.obs;
  void changeTab(int index) {
    selectedTab.value = index;
    update();
  }

  List tabs = [
    const HomeView(),
    const WalletView(),
    const SettingsView(),
    const ProfileView(),
  ];
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  static String routeName = "/bottomNavBar";

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final controller = Get.find<BottomNavigationController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          backgroundColor: MyColors.bgColor,
          bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40.sp),
                topLeft: Radius.circular(40.sp)),
            child: SizedBox(
                height: 80.h,
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: MyColors.white,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  currentIndex: controller.selectedTab.value,
                  onTap: (index) => controller.changeTab(index),
                  selectedItemColor: Colors.blue,
                  unselectedItemColor: MyColors.grey,
                  items: [
                    BottomNavigationBarItem(
                        icon: SvgPicture.asset(
                          "assets/icons/home.svg",

                          // ignore: deprecated_member_use
                          color: controller.selectedTab.value == 0
                              ? MyColors.black
                              : MyColors.grey,
                        ),
                        label: ""),
                    BottomNavigationBarItem(
                        icon: SvgPicture.asset(
                          "assets/icons/Wallet.svg",
                          // ignore: deprecated_member_use
                          color: controller.selectedTab.value == 1
                              ? MyColors.black
                              : MyColors.grey,
                        ),
                        label: ""),
                    BottomNavigationBarItem(
                        icon: PhosphorIcon(
                          PhosphorIcons.gear(PhosphorIconsStyle.fill),
                          color: controller.selectedTab.value == 2
                              ? MyColors.black
                              : MyColors.grey,
                          size: 30.sp,
                        ),
                        label: ""),
                    BottomNavigationBarItem(
                        icon: SvgPicture.asset(
                          "assets/icons/profile.svg",
                          // ignore: deprecated_member_use
                          color: controller.selectedTab.value == 3
                              ? MyColors.black
                              : MyColors.grey,
                        ),
                        label: ""),
                  ],
                )),
          ),
          body: Obx(
            () => controller.tabs[controller.selectedTab.value],
          ),
        ));
  }
}
