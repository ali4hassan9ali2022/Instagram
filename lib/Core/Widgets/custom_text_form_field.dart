import 'package:flutter/material.dart';


class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.label,
    this.filled,
    this.fillColor,
    this.prefixIcon,
    this.suffixIcon,
    this.onTap,
    this.validator,
    this.obscureText,
    this.controller,
    this.keyboardType,
    this.textAlign,
    this.maxLines,
    this.errorStyle,
    this.hintStyle,
    this.onChanged,
    this.onSaved,
    this.border,
    this.enabledBorder,
    this.focusedBorder,
    this.errorBorder,
    this.isCheck,
    this.obscuringCharacter,
    this.focusNode,
  });
  final String? hintText;
  final Function(dynamic)? onChanged;
  final Function(dynamic)? onSaved;
  final Widget? label;
  final bool? filled;
  final Color? fillColor;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final Function()? onTap;
  final String? Function(String?)? validator;
  final bool? obscureText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextStyle? errorStyle;
  final TextStyle? hintStyle;
  final InputBorder? border;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final bool? isCheck;
  final String? obscuringCharacter;
  final FocusNode? focusNode;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: HeightSizeConfig.height82,
      child: TextFormField(
        focusNode: focusNode,
        maxLines: obscureText == true ? 1 : maxLines,
        textAlign: textAlign ?? TextAlign.start,
        onTap: onTap,
        onTapUpOutside: (event) {
          FocusScope.of(context).unfocus();
        },
        validator: validator,
        onChanged: onChanged,
        obscuringCharacter: obscuringCharacter ?? "*",
        onSaved: onSaved,
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          errorBorder: errorBorder,
          hintStyle: hintStyle,
          errorStyle: errorStyle ?? TextStyle(height: 0),
          // contentPadding: EdgeInsets.zero,
          hintText: hintText,
          label: label,
          border: border,
          enabledBorder: enabledBorder,
          focusedBorder: focusedBorder,
          filled: filled,
          fillColor: fillColor,
          prefixIcon: isCheck == true ? Icon(prefixIcon) : null,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
