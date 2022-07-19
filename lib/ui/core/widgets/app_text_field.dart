import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fresh_fruits/ui/core/app_colors.dart';
import 'package:fresh_fruits/ui/core/app_text_style.dart';

class AppTextField extends StatelessWidget {
  final double? height;
  final double? weight;
  final int? maxLines;
  final int? minLines;
  final String? hintText;
  final bool obscureText;
  final Color? filledColor;
  final EdgeInsets? padding;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final InputBorder? borderStyle;
  final Function(String)? onChanged;
  final TextInputType? textInputType;
  final TextInputAction? inputAction;
  final InputDecoration? inputDecoration;
  final TextEditingController? controller;
  final EdgeInsetsGeometry? contentPudding;
  final List<TextInputFormatter>? textInputFormatter;

  const AppTextField({
    Key? key,
    this.height,
    this.weight,
    this.padding,
    this.minLines,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.textStyle,
    this.onChanged,
    this.controller,
    this.inputAction,
    this.filledColor,
    this.obscureText = false,
    this.borderStyle,
    this.textInputType,
    this.contentPudding,
    this.inputDecoration,
    this.textInputFormatter,
  }) : super(key: key);

  InputBorder _borderStyle() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(color: AppColors.orange),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        onChanged: onChanged,
        minLines: minLines,
        maxLines: maxLines,
        keyboardType: textInputType ?? TextInputType.multiline,
        inputFormatters: textInputFormatter,
        decoration: inputDecoration ??
            InputDecoration(
              contentPadding: contentPudding ??
                  EdgeInsets.symmetric(
                    vertical: height ?? 8 ,
                    horizontal: weight ?? 16,
                  ),
              fillColor: filledColor ?? AppColors.white,
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
        textInputAction: inputAction ?? TextInputAction.newline,
      ),
    );
  }
}
