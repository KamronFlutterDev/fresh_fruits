import 'package:flutter/material.dart';
import 'package:fresh_fruits/ui/core/app_colors.dart';
import 'package:fresh_fruits/ui/core/app_text_style.dart';

class AppTextField extends StatelessWidget {
  final String? hintText;
  final bool obscureText;
  final Color? filledColor;
  final EdgeInsets? padding;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final InputBorder? borderStyle;
  final Function(String)? onChanged;
  final TextInputAction? inputAction;
  final InputDecoration? inputDecoration;
  final TextEditingController? controller;
  final EdgeInsetsGeometry? contentPudding;

  const AppTextField({
    Key? key,
    this.padding,
    this.hintText,
    this.hintStyle,
    this.textStyle,
    this.onChanged,
    this.controller,
    this.inputAction,
    this.filledColor,
    this.obscureText = false,
    this.borderStyle,
    this.contentPudding,
    this.inputDecoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        onChanged: onChanged,
        decoration: inputDecoration ??
            InputDecoration(
              contentPadding: contentPudding ??
                  const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 16,
                  ),
              fillColor: filledColor ?? Colors.white,
              filled: true,
              hintText: hintText,
              hintStyle: hintStyle ?? SelfTextStyle.hintStyle,
              border: _borderStyle(),
              enabledBorder: borderStyle ?? _borderStyle(),
              focusedBorder: _borderStyle(),
              disabledBorder: _borderStyle(),
            ),
        obscureText: obscureText,
        style: textStyle ?? SelfTextStyle.hintStyle,
        textInputAction: inputAction ?? TextInputAction.next,
      ),
    );
  }

  InputBorder _borderStyle() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(color: AppColors.orange),
    );
  }
}
