import 'package:crypto_vallet/views/auth/create_password_view.dart';
import 'package:crypto_vallet/views/auth/email_verification_view.dart';
import 'package:crypto_vallet/views/auth/forgot_password_view.dart';
import 'package:crypto_vallet/views/auth/reset_password_view.dart';
import 'package:crypto_vallet/views/auth/sign_in_view.dart';
import 'package:crypto_vallet/views/auth/sign_up.dart';
import 'package:crypto_vallet/views/boarding/boarding_view.dart';
import 'package:crypto_vallet/views/bottom_nav/btm_nav_bar.dart';
import 'package:crypto_vallet/views/converter/converter_view.dart';
import 'package:crypto_vallet/views/enviar/enviar_extrato.dart';
import 'package:crypto_vallet/views/enviar/enviar_view.dart';
import 'package:crypto_vallet/views/enviar/qr_scanner_view.dart';
import 'package:crypto_vallet/views/extrato/extrato_view.dart';
import 'package:crypto_vallet/views/profile/account_setting_view.dart';
import 'package:crypto_vallet/views/profile/support_view.dart';
import 'package:crypto_vallet/views/receber/receber_code_view.dart';
import 'package:crypto_vallet/views/receber/receber_view.dart';
import 'package:crypto_vallet/views/retirar/transfer_view.dart';
import 'package:crypto_vallet/views/settings/settings_view.dart';
import 'package:crypto_vallet/views/wallet/wallet_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            theme: ThemeData(fontFamily: 'Poppins'),
            debugShowCheckedModeBanner: false,
            title: 'Crpto Vallet',
            initialRoute: '/',
            getPages: [
              GetPage(
                name: "/",
                page: () => const BoardingView(),
              ),
              GetPage(
                name: SignInView.routeName,
                page: () => const SignInView(),
              ),
              GetPage(
                name: SignUpView.routeName,
                page: () => const SignUpView(),
              ),
              GetPage(
                name: ForgotPasswordView.routeName,
                page: () => const ForgotPasswordView(),
              ),
              GetPage(
                name: EmailVerificationView.routeName,
                page: () => const EmailVerificationView(),
              ),
              GetPage(
                name: ResetPasswordView.routeName,
                page: () => const ResetPasswordView(),
              ),
              GetPage(
                name: CreateNewPasswordView.routeName,
                page: () => const CreateNewPasswordView(),
              ),
              GetPage(
                name: BottomNavBar.routeName,
                page: () => const BottomNavBar(),
              ),
              GetPage(
                name: SupportView.routeName,
                page: () => const SupportView(),
              ),
              GetPage(
                name: AccountSetting.routeName,
                page: () => const AccountSetting(),
              ),
              GetPage(
                name: SettingsView.routeName,
                page: () => const SettingsView(),
              ),
              GetPage(
                name: ConverterView.routeName,
                page: () => const ConverterView(),
              ),
              GetPage(
                name: TransferView.routeName,
                page: () => const TransferView(),
              ),
              GetPage(
                name: WalletView.routeName,
                page: () => const WalletView(),
              ),
              GetPage(
                name: ReceberView.routeName,
                page: () => const ReceberView(),
              ),
              GetPage(
                name: ReceberCodeView.routeName,
                page: () => const ReceberCodeView(),
              ),
              GetPage(
                name: ExtratoView.routeName,
                page: () => const ExtratoView(),
              ),
              GetPage(
                name: EnviarView.routeName,
                page: () => const EnviarView(),
              ),
              GetPage(
                name: QrScannerView.routeName,
                page: () => const QrScannerView(),
              ),
              GetPage(
                name: EnviarExtratoView.routeName,
                page: () => const EnviarExtratoView(),
              ),
            ],
          );
        });
  }
}
