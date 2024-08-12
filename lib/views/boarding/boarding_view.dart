import 'package:crypto_vallet/views/boarding/widgets/view_three.dart';
import 'package:crypto_vallet/views/boarding/widgets/view_two.dart';
import 'package:crypto_vallet/views/bottom_nav/btm_nav_bar.dart';
import 'package:crypto_vallet/utils/theme/myColors.dart';
import 'package:flutter/material.dart';
import 'package:crypto_vallet/views/boarding/widgets/view_one.dart';
import 'package:get/get.dart';

class BoardingView extends StatefulWidget {
  const BoardingView({super.key});
  static String routeName = "/boardingView";
  @override
  State<BoardingView> createState() => _BoardingViewState();
}

class _BoardingViewState extends State<BoardingView> {
  int _currentPage = 0;

  final PageController _pageController = PageController();
  final controller = Get.put(BottomNavigationController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Stack(
      children: [
        PageView(
          controller: _pageController,
          onPageChanged: (int page) {
            setState(() {
              _currentPage = page;
            });
          },
          children: const [
            ViewOne(),
            ViewTwo(),
            ViewThree(),
          ],
        ),
        Positioned(
          bottom: s.height * 0.055,
          left: s.width * 0.05,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List<Widget>.generate(3, (int index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 10.0,
                width: (index == _currentPage) ? 20.0 : 10.0,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: (index == _currentPage)
                        ? MyColors.primary
                        : const Color(0xFFEAEAEA),
                  ),
                  color: (index == _currentPage)
                      ? Colors.white
                      : const Color(0xFFEAEAEA),
                  borderRadius: BorderRadius.circular(5.0),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
