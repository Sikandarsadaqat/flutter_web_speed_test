import 'package:flutter/material.dart';

import '../../utils/constants/color_constants/color_constants.dart';

class AppButton extends StatelessWidget {
  final String? label;
  final Color? backgroundColor;
  final Color? textColor;
  final BorderSide? side;
  final Function onTap;
  final BorderRadius? borderRadius;
  final double? height;
  final double? width;
  final double fontSize;
  final FontWeight? fontWeight;
  final TextStyle? textStyle;

  AppButton({
    this.label,
    this.textColor,
    this.backgroundColor = AppColors.buttonBackground,
    this.side = const BorderSide(style: BorderStyle.none),
    this.borderRadius,
    required this.onTap,
    this.height = 20,
    this.fontWeight,
    this.fontSize = 18,
    this.textStyle,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height!,
      child: TextButton(
        onPressed: () => onTap(),
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          elevation: 3,
          shape: RoundedRectangleBorder(
            side: side!,
            borderRadius: borderRadius ??
                BorderRadius.circular(
                  4,
                ),
          ),
        ),
        child: Center(
          child: Text(
            label!,
            style: textStyle ??
                Theme.of(context).textTheme.button!.copyWith(
                      color: textColor ?? AppColors.authContainer,
                      fontSize: fontSize,
                    ),
          ),
        ),
      ),
    );
  }
}
//
// class AppIconButton extends StatelessWidget {
//   final String? label;
//   final Color? backgroundColor;
//   final Color? textColor;
//   final Color? borderColor;
//   final Function onTap;
//   final double? height;
//   final double? width;
//   final FontWeight? fontWeight;
//
//   final Widget? prefixWidget;
//
//   const AppIconButton({
//     this.label,
//     this.backgroundColor,
//     this.textColor,
//     required this.onTap,
//     this.height: 20,
//     this.fontWeight,
//     this.prefixWidget,
//     this.width: 32,
//     this.borderColor,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => onTap(),
//       child: Container(
//         height: height!.h,
//         width: width!.w,
//         decoration: BoxDecoration(
//           border: Border.all(
//             color: borderColor!,
//           ),
//           color: backgroundColor,
//           borderRadius: BorderRadius.all(
//             Radius.circular(
//               4.w,
//             ),
//           ),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.white60,
//               blurRadius: 1,
//               spreadRadius: 2,
//               offset: Offset(2, 1),
//             ),
//           ],
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             prefixWidget!,
//             SizedBox(
//               width: 12.w,
//             ),
//             Text(
//               label!,
//               textAlign: TextAlign.center,
//               style: Theme.of(context).textTheme.subtitle2!.copyWith(
//                     color: textColor,
//                     fontWeight: fontWeight,
//                   ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
