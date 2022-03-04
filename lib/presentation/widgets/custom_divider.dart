import 'package:flutter/material.dart';

import '../../utils/constants/color_constants/color_constants.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider(
      {Key? key, required this.width, this.color, this.height = 1})
      : super(key: key);
  final double height;
  final double width;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: color ?? AppColors.textFieldBorder.withOpacity(0.2),
    );
  }
}
