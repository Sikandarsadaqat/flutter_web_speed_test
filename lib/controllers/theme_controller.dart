import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../utils/constants/get_storage.dart';
import '../utils/theme/theme_class.dart';

class ThemeController extends GetxController {
  RxBool isDarkMode = false.obs;
  late final GetStorage _getStorage;

  void changeTheme(BuildContext context) {
    final theme =
        Get.isDarkMode ? AppThemes.lightThemeData : AppThemes.darkThemeData;
    ThemeSwitcher.of(context).changeTheme(theme: theme);

    if (_getStorage.read(GetStorageKey.isDarkMode)) {
      _getStorage.write(GetStorageKey.isDarkMode, false);
      isDarkMode.value = false;
      update();
    } else {
      _getStorage.write(GetStorageKey.isDarkMode, true);
      isDarkMode.value = true;
      update();
    }
  }

  @override
  void onInit() {
    _getStorage = GetStorage();
    isDarkMode.value = _getStorage.read(GetStorageKey.isDarkMode);
    // TODO: implement onInit
    super.onInit();
  }
}
