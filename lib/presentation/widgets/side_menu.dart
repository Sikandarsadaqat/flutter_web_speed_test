import 'package:flutter/material.dart';
import 'package:qlevar_router/qlevar_router.dart';

import '../../utils/constants/asset_constants.dart';
import '../../utils/constants/color_constants/color_constants.dart';
import '../../utils/localization/language_constants.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key, this.showFullDrawer = true, this.toggleDrawer})
      : super(key: key);
  final bool showFullDrawer;
  final VoidCallback? toggleDrawer;
  Widget drawerTab(context,
      {required icon,
      required title,
      required onClick,
      bool full = true,
      bool showIcon = false,
      bool leftMargin = false}) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onClick,
        child: Container(
          margin: EdgeInsets.only(
            top: 10,
            bottom: 10,
            left: showFullDrawer && leftMargin ? 28 : 0,
          ),
          child: Row(
            children: [
              Image.asset(
                icon,
                height: 20,
              ),
              if (showFullDrawer)
                const SizedBox(
                  width: 6,
                ),
              if (full)
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline3,
                ),
              Expanded(
                child: showIcon
                    ? const Icon(
                        Icons.keyboard_arrow_down,
                        color: AppColors.authContainer,
                      )
                    : const SizedBox(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget drawerTabCategory(context, {required title}) {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      padding: const EdgeInsets.only(
        left: 20,
      ),
      curve: Curves.linear,
      width: showFullDrawer ? MediaQuery.of(context).size.width * 0.2 : 60,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        color: AppColors.buttonBackground,
      ),
      duration: const Duration(
        milliseconds: 300,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            height: 60,
            child: Image.asset(
              AssetsConstants.faureeDashboard,
            ),
          ),
          Container(
            color: AppColors.authContainer,
            height: 2.5,
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                drawerTab(context, onClick: () {
                  QR.to('/home');
                },
                    full: showFullDrawer,
                    icon: AssetsConstants.dashboard,
                    title: getTranslated(LanguageKeys.dashboard, context)),
                drawerTabCategory(context,
                    title: getTranslated(LanguageKeys.supplyChain, context)),
                drawerTab(context, onClick: () {
                  QR.to('/home/manage_suppliers');
                },
                    full: showFullDrawer,
                    icon: AssetsConstants.usersIcon,
                    title: getTranslated(LanguageKeys.supplier, context)),
                drawerTab(
                  context,
                  onClick: () {},
                  full: showFullDrawer,
                  icon: AssetsConstants.sent,
                  title: getTranslated(LanguageKeys.purchaseOrders, context),
                ),
                drawerTab(
                  context,
                  onClick: () {},
                  full: showFullDrawer,
                  icon: AssetsConstants.invoice,
                  title: getTranslated(LanguageKeys.invoices, context),
                ),
                drawerTab(
                  context,
                  onClick: () {},
                  full: showFullDrawer,
                  icon: AssetsConstants.interview,
                  title: getTranslated(LanguageKeys.earlyRequest, context),
                ),
                drawerTabCategory(context,
                    title: getTranslated(LanguageKeys.administration, context)),
                drawerTab(
                  context,
                  onClick: () {},
                  full: showFullDrawer,
                  icon: AssetsConstants.report,
                  title: getTranslated(LanguageKeys.reports, context),
                ),
                drawerTab(
                  context,
                  onClick: () {},
                  full: showFullDrawer,
                  icon: AssetsConstants.gear,
                  title: getTranslated(LanguageKeys.settings, context),
                ),
                drawerTab(
                  context,
                  onClick: () {},
                  full: showFullDrawer,
                  icon: AssetsConstants.usersIcon,
                  title: getTranslated(LanguageKeys.usersManagement, context),
                  showIcon: true,
                ),
                drawerTab(
                  context,
                  onClick: () {},
                  full: showFullDrawer,
                  icon: AssetsConstants.user,
                  title: getTranslated(LanguageKeys.roles, context),
                  leftMargin: true,
                ),
                drawerTab(
                  context,
                  onClick: () {},
                  full: showFullDrawer,
                  icon: AssetsConstants.userRights,
                  title: getTranslated(LanguageKeys.rights, context),
                  leftMargin: true,
                ),
                drawerTab(
                  context,
                  onClick: () {},
                  full: showFullDrawer,
                  icon: AssetsConstants.users,
                  title: getTranslated(LanguageKeys.users, context),
                  leftMargin: true,
                ),
                drawerTab(
                  context,
                  onClick: () {},
                  full: showFullDrawer,
                  icon: AssetsConstants.permission,
                  title: getTranslated(LanguageKeys.permission, context),
                  leftMargin: true,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
