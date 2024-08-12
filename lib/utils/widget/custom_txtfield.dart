import 'package:crypto_vallet/utils/theme/myColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String icon;

  const CustomTextField(
      {super.key, required this.hintText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(
            icon,
            color: MyColors.grey,
            fit: BoxFit.contain,
          ),
        ),
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 12.sp,
              color: MyColors.grey,
              fontWeight: FontWeight.w400,
            ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: MyColors.border),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: MyColors.border),
        ),
      ),
    );
  }
}

class PasswordCustomTextField extends StatefulWidget {
  final String hintText;

  const PasswordCustomTextField({super.key, required this.hintText});

  @override
  _PasswordCustomTextFieldState createState() =>
      _PasswordCustomTextFieldState();
}

class _PasswordCustomTextFieldState extends State<PasswordCustomTextField> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: !_isPasswordVisible,
      decoration: InputDecoration(
        suffixIcon: InkWell(
          onTap: () {
            setState(() {
              _isPasswordVisible = !_isPasswordVisible;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset(
              _isPasswordVisible
                  ? "assets/icons/lock.svg"
                  : "assets/icons/eye.svg",
              color: MyColors.grey,
              fit: BoxFit.contain,
            ),
          ),
        ),
        hintText: widget.hintText,
        hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 12.sp,
              color: MyColors.grey,
              fontWeight: FontWeight.w400,
            ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: MyColors.border),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: MyColors.border),
        ),
      ),
    );
  }
}

class CustomLabelTextField extends StatelessWidget {
  final String label;
  final String hint;
  final String icon;

  const CustomLabelTextField(
      {super.key, required this.label, required this.hint, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 14.sp,
              color: MyColors.grey,
              fontWeight: FontWeight.w500,
              fontFamily: "Work Sans",
            ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: hint,
        hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 12.sp,
              color: MyColors.grey,
              fontWeight: FontWeight.w400,
              fontFamily: "Work Sans",
            ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SvgPicture.asset(icon),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.sp),
            borderSide:
                BorderSide(color: const Color(0xFFDFDFDF), width: 1.5.w)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.sp),
          borderSide: const BorderSide(color: Color(0xFFDFDFDF)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.sp),
          borderSide: const BorderSide(color: Color(0xFFDFDFDF)),
        ),
        contentPadding: const EdgeInsets.all(16.0),
      ),
    );
  }
}

class CustomLabelPasswordTextField extends StatefulWidget {
  final String label;
  final String hint;
  final String icon;

  const CustomLabelPasswordTextField(
      {super.key, required this.label, required this.hint, required this.icon});

  @override
  State<CustomLabelPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState
    extends State<CustomLabelPasswordTextField> {
  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _isPasswordVisible,
      decoration: InputDecoration(
        labelText: widget.label,
        labelStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 14.sp,
              color: MyColors.grey,
              fontWeight: FontWeight.w500,
              fontFamily: "Work Sans",
            ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: widget.hint,
        hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 12.sp,
              color: MyColors.grey,
              fontWeight: FontWeight.w400,
              fontFamily: "Work Sans",
            ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SvgPicture.asset(widget.icon),
        ),
        suffixIcon: InkWell(
          onTap: () {
            setState(() {
              _isPasswordVisible = !_isPasswordVisible;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset(
              _isPasswordVisible
                  ? "assets/icons/eye-slash.svg"
                  : "assets/icons/eye.svg",
              color: MyColors.grey,
              fit: BoxFit.contain,
            ),
          ),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.sp),
            borderSide:
                BorderSide(color: const Color(0xFFDFDFDF), width: 1.5.w)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.sp),
          borderSide: const BorderSide(color: Color(0xFFDFDFDF)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.sp),
          borderSide: const BorderSide(color: Color(0xFFDFDFDF)),
        ),
        contentPadding: const EdgeInsets.all(16.0),
      ),
    );
  }
}
