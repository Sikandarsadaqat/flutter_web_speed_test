import 'package:flutter/material.dart';

import '../../utils/constants/asset_constants.dart';
import '../../utils/constants/color_constants/color_constants.dart';

class AuthBackgroundWidget extends StatelessWidget {
  const AuthBackgroundWidget({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColorLight,
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: 750,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Image.asset(AssetsConstants.authLeftBox),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image.asset(AssetsConstants.authRightBox),
                  ),
                  Container(
                    margin: const EdgeInsets.all(60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.authContainer,
                    ),
                    padding: const EdgeInsets.only(
                      top: 80,
                      bottom: 80,
                      left: 40,
                      right: 40,
                    ),
                    width: double.infinity,
                    child: child,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
