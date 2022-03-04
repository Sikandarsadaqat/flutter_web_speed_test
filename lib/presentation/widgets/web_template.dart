import 'package:flutter/material.dart';
import 'package:flutter_web_speed_test/presentation/widgets/web_app_bar.dart';
import '../../utils/constants/color_constants/color_constants.dart';
import 'side_menu.dart';

class WebTemplate extends StatelessWidget {
  final Widget? body;
  final String? pageTitle;
  final Widget? floatingActionButton;
  final Widget? breadCrumbsWidget;
  final bool showBreadCrumbs;
  const WebTemplate({
    this.body,
    this.pageTitle = 'HOME',
    this.breadCrumbsWidget,
    this.showBreadCrumbs = false,
    this.floatingActionButton,
    this.showFullDrawer = true,
    this.toggleDrawer,
  });
  final bool showFullDrawer;
  final VoidCallback? toggleDrawer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColorLight,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      body: Builder(builder: (context) {
        return SingleChildScrollView(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SideMenu(
                showFullDrawer: showFullDrawer,
                toggleDrawer: toggleDrawer,
              ),
              Container(
                width: 15,
                height: 65,
                color: AppColors.authContainer,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    WebAppBar(
                      pageTitle: pageTitle!,
                    ),
                    body!,
                  ],
                ),
              ),
              const SizedBox(
                width: 15,
              ),
            ],
          ),
        );
      }),
    );
  }
}
