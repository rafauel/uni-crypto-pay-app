import 'package:crypto_vallet/utils/constants/padding_constants.dart';
import 'package:crypto_vallet/utils/constants/spacings_sizes.dart';
import 'package:crypto_vallet/utils/theme/myColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QrScannerView extends StatefulWidget {
  const QrScannerView({super.key});

  static String routeName = "/qrScanner";

  @override
  _QrScannerViewState createState() => _QrScannerViewState();
}

class _QrScannerViewState extends State<QrScannerView> {
  MobileScannerController cameraController = MobileScannerController();

  void _onDetect(BarcodeCapture barcode) {
    if (barcode.barcodes.isEmpty) {
      debugPrint('Failed to scan Barcode');
    } else {
      final String code = barcode.barcodes.first.rawValue ?? '---';
      debugPrint('Barcode found! $code');
      // Handle the scanned code here
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          fixedVertSpacing(20),
          Padding(
            padding: AppPaddings.largePadding,
            child: Row(
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
                  "Screener",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 18.sp,
                        color: MyColors.black,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
          ),
          fixedVertSpacing(30),
          Expanded(
            flex: 3,
            child: MobileScanner(
              controller: cameraController,
              onDetect: _onDetect,
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                width: 60.w,
                height: 60.h,
                decoration: BoxDecoration(
                  color: MyColors.primary,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: SvgPicture.asset("assets/icons/qr.svg"),
                  onPressed: () {
                    cameraController.start();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }
}
