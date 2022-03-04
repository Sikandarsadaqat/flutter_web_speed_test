import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import '../../utils/constants/color_constants/color_constants.dart';

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({
    Key? key,
    required this.headingText,
    required this.hintText,
    this.isWeb = false,
    this.value,
    required this.list,
    this.titleSpacing = 5,
    this.titleTextStyle,
    this.width = 200,
    this.borderColor,
    this.color,
    this.hintStyle,
    this.dropdownMode = Mode.MENU,
    this.onChange,
  }) : super(key: key);
  final bool isWeb;
  final TextStyle? titleTextStyle;
  final String? value;
  final Mode dropdownMode;
  final String hintText;
  final String headingText;
  final double? width;
  final Color? color;
  final TextStyle? hintStyle;
  final Color? borderColor;
  final double? titleSpacing;
  final List<String> list;
  final void Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (headingText.isNotEmpty)
          Text(
            headingText,
            style: titleTextStyle ??
                Theme.of(context).textTheme.headline2!.copyWith(
                      color: AppColors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
          ),
        if (headingText.isNotEmpty)
          SizedBox(
            height: titleSpacing!,
          ),
        Container(
          width: width,
          height: 44,
          padding: const EdgeInsets.only(left: 10, right: 05),
          decoration: BoxDecoration(
            color: color,
            border: Border.all(
                color: borderColor ?? AppColors.textFieldBorder, width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: DropdownSearch<String>(
            selectedItem: value,
            showAsSuffixIcons: true,
            dropDownButton: const Icon(
              Icons.keyboard_arrow_down,
              size: 24,
              color: AppColors.black,
            ),
            dropdownSearchDecoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none,
              hintStyle: hintStyle ??
                  Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: AppColors.black),
            ),
            showSearchBox: true,
            mode: dropdownMode,
            onChanged: (value) {
              if (value == null) return;
              onChange!(value);
            },
            items: list.map((valueItem) {
              return valueItem;
            }).toList(),
          ),
        ),
      ],
    );
  }
}
