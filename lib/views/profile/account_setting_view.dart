import 'package:crypto_vallet/utils/constants/padding_constants.dart';
import 'package:crypto_vallet/utils/constants/spacings_sizes.dart';
import 'package:crypto_vallet/utils/theme/myColors.dart';
import 'package:crypto_vallet/utils/widget/custom_txtfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class AccountSetting extends StatefulWidget {
  const AccountSetting({super.key});

  static String routeName = '/accountSetting';

  @override
  // ignore: library_private_types_in_public_api
  _AccountSettingState createState() => _AccountSettingState();
}

class _AccountSettingState extends State<AccountSetting> {
  File? _image;

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgColor,
      body: Padding(
        padding: AppPaddings.largePadding,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                    "Account",
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
              fixedVertSpacing(20),
              Stack(
                children: [
                  SizedBox(
                    width: 100.w, // Adjust the width and height as needed
                    height: 100.h,
                    child: ClipOval(
                      child: _image != null
                          ? Image.file(
                              _image!,
                              fit: BoxFit.cover,
                            )
                          : Image.asset(
                              "assets/images/dp.png",
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: InkWell(
                      onTap: _pickImage,
                      child: SvgPicture.asset(
                        "assets/icons/pick-image.svg",
                      ),
                    ),
                  ),
                ],
              ),
              fixedVertSpacing(50),
              const CustomLabelTextField(
                label: 'First Name',
                hint: 'Alex Rutynos',
                icon: "assets/icons/user-textfield.svg",
              ),
              fixedVertSpacing(20),
              const CustomLabelTextField(
                label: 'CPF',
                hint: '084.709.299.25',
                icon: "assets/icons/user-textfield.svg",
              ),
              fixedVertSpacing(20),
              const CustomLabelTextField(
                label: 'Email address',
                hint: 'Alexrutynos@yahoo.com',
                icon: "assets/icons/email.svg",
              ),
              fixedVertSpacing(20),
              const CustomLabelPasswordTextField(
                label: 'Password',
                hint: '********',
                icon: "assets/icons/lock.svg",
              ),
              fixedVertSpacing(20),
              const CustomLabelTextField(
                label: 'Phone Number',
                hint: '+55 1754564646',
                icon: "assets/icons/Phone.svg",
              ),
              fixedVertSpacing(40),
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
      ),
    );
  }
}
