import 'package:flag/flag_enum.dart';
import 'package:flag/flag_widget.dart';
import 'package:flutter/material.dart';
import '../../utils/constants/asset_constants.dart';
import '../../utils/constants/color_constants/color_constants.dart';

class WebAppBar extends StatelessWidget {
  final String pageTitle;
  final String? name;
  final String? userType;
  const WebAppBar({
    this.pageTitle: 'HOME',
    this.name: 'Niyaz',
    this.userType: 'Student',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: AppColors.dashboardBar,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flag.fromCode(
                FlagsCode.US,
                height: 18,
                width: 28,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "English",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                      color: AppColors.authContainer,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  AssetsConstants.bellIcon,
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Admin',
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                          color: AppColors.authContainer,
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                  ),
                  Text(
                    'Online',
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                          color: AppColors.authContainer,
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  AssetsConstants.profile,
                  height: 30,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
