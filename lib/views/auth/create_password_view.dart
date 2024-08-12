import 'package:crypto_vallet/views/auth/sign_in_view.dart';
import 'package:crypto_vallet/utils/constants/padding_constants.dart';
import 'package:crypto_vallet/utils/constants/spacings_sizes.dart';
import 'package:crypto_vallet/utils/theme/myColors.dart';
import 'package:crypto_vallet/utils/widget/custom_txtfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CreateNewPasswordView extends StatefulWidget {
  const CreateNewPasswordView({super.key});

  static String routeName = '/createNewPassword';

  @override
  State<CreateNewPasswordView> createState() => _CreateNewPasswordViewState();
}

class _CreateNewPasswordViewState extends State<CreateNewPasswordView> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Padding(
        padding: AppPaddings.largePadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.h,
              ),
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
                    "Create Password",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 18.sp,
                          color: MyColors.black,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                ],
              ),
              fixedVertSpacing(15),
              Center(
                child: SvgPicture.asset(
                  "assets/images/create-password.svg",
                  fit: BoxFit.cover,
                ),
              ),
              fixedVertSpacing(15),
              Text(
                "Create your\nnew password",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 25.sp,
                      color: MyColors.headingColor,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              fixedVertSpacing(30),
              Text(
                "Password",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 14.sp,
                      color: MyColors.black,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const PasswordCustomTextField(hintText: "*************"),
              fixedVertSpacing(20),
              Text(
                "Confirm Password",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 14.sp,
                      color: MyColors.black,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const PasswordCustomTextField(hintText: "*************"),
              fixedVertSpacing(15),
              Row(
                children: [
                  SizedBox(
                    height: 13.h,
                    width: 13.w,
                    child: Checkbox(
                      value: value,
                      onChanged: (value) {
                        setState(() {
                          value = value;
                        });
                      },
                      checkColor: MyColors.black,
                      side: BorderSide(color: MyColors.grey),
                    ),
                  ),
                  fixedHorzSpacing(10),
                  Text(
                    "remember me",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 12.sp,
                          color: MyColors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ],
              ),
              fixedVertSpacing(30),
              SizedBox(
                height: 50.h,
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
                                    "Congratulations!",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          fontSize: 25.sp,
                                          color: MyColors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  fixedVertSpacing(35),
                                  Center(
                                    child: Text(
                                      "Your account is ready to use. You will be redirected to the home page in a few seconds.",
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
                                  ),
                                  fixedVertSpacing(45),
                                  SizedBox(
                                    height: 50.h,
                                    width: double.infinity,
                                    child: MaterialButton(
                                      onPressed: () {
                                        Get.toNamed(SignInView.routeName);
                                      },
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(11.sp)),
                                      color: MyColors.primary,
                                      child: Text(
                                        "Back to Home",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                              fontSize: 16.sp,
                                              color: MyColors.white,
                                              fontWeight: FontWeight.w600,
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
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11.sp)),
                  color: MyColors.primary,
                  child: Text(
                    "Continue",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 16.sp,
                          color: MyColors.white,
                          fontWeight: FontWeight.w600,
                        ),
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
