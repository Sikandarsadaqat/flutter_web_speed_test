import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utils/constants/color_constants/color_constants.dart';

class AppTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final int? maxLines;
  final String? hintText;
  final String? title;
  final FocusNode? focusNode;
  final bool autofocus;
  final bool? isFilterScreen;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  final double titleSpacing;
  final double? fontSize;
  final double? hintFontSize;
  final String? otherTitle;
  final FontWeight? fontWeight;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final TextStyle? titleTextStyle;
  final VoidCallback? otherTap;
  final TextStyle? hintTextStyle;
  final double? width;
  final Color? borderColor;
  const AppTextFormField({
    Key? key,
    this.title = '',
    this.hintText,
    this.otherTitle = '',
    this.isFilterScreen = false,
    this.maxLines = 1,
    this.hintFontSize,
    this.width,
    this.borderColor,
    this.controller,
    this.hintTextStyle,
    this.otherTap,
    this.focusNode,
    this.autofocus = false,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.validator,
    this.titleSpacing = 2,
    this.titleTextStyle,
    this.fontSize,
    this.fontWeight,
    this.textInputType,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title!.isNotEmpty)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (title!.isNotEmpty)
                Text(
                  title!,
                  style: titleTextStyle ??
                      Theme.of(context).textTheme.headline2!.copyWith(
                            color: AppColors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                ),
              if (otherTitle!.isNotEmpty)
                InkWell(
                  onTap: otherTap,
                  child: Text(
                    otherTitle!,
                    style: titleTextStyle ??
                        Theme.of(context).textTheme.headline2!.copyWith(
                              color: AppColors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                  ),
                ),
            ],
          ),
        if (title!.isNotEmpty) SizedBox(height: titleSpacing),
        TextFormField(
          maxLines: maxLines,
          controller: controller,
          autofocus: autofocus,
          focusNode: focusNode,
          onChanged: onChanged,
          validator: validator,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontSize: hintFontSize,
                color: AppColors.black,
              ),
          obscureText: obscureText,
          keyboardType: textInputType,
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
            isDense: true,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            border: const OutlineInputBorder(),
            hintText: hintText,
            hintStyle: hintTextStyle ??
                Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: hintFontSize,
                      color: AppColors.black,
                    ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: borderColor ?? AppColors.textFieldBorder,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: borderColor ?? AppColors.textFieldBorder,
              ),
            ),
          ),
        )
      ],
    );
  }
}
