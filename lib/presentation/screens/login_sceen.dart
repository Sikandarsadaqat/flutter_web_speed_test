import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qlevar_router/qlevar_router.dart';

import '../../utils/constants/asset_constants.dart';
import '../../utils/constants/color_constants/color_constants.dart';
import '../../utils/localization/language_constants.dart';
import '../widgets/app_button.dart';
import '../widgets/app_text_form_field.dart';
import '../widgets/auth_background_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthBackgroundWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            AssetsConstants.faureeLogo,
          ),
          const SizedBox(
            height: 35,
          ),
          SelectableText(
            getTranslated(LanguageKeys.welcome, context)!,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColors.black),
          ),
          const SizedBox(
            height: 20,
          ),
          AppTextFormField(
            title: getTranslated(LanguageKeys.emailOrPhone, context),
            hintText: getTranslated(LanguageKeys.emailOrPhone, context),
            titleSpacing: 5,
          ),
          const SizedBox(
            height: 20,
          ),
          AppTextFormField(
            obscureText: true,
            title: getTranslated(LanguageKeys.password, context),
            otherTitle: getTranslated(LanguageKeys.forgotPassword, context),
            otherTap: () {
              QR.to("/forgot_password");
            },
            hintText: getTranslated(LanguageKeys.password, context),
            titleSpacing: 5,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(
                    color: AppColors.textFieldBorder,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SelectableText(
                getTranslated(LanguageKeys.rememberMe, context)!,
                style: Theme.of(context).textTheme.headline2!.copyWith(
                      color: AppColors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          AppButton(
            height: 40,
            onTap: () {
              QR.to("/home");
            },
            label: getTranslated(LanguageKeys.login, context),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                getTranslated(LanguageKeys.newOnPlatform, context) ?? '',
                style: Theme.of(context).textTheme.headline2!.copyWith(
                      color: AppColors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              InkWell(
                onTap: () {
                  QR.to(
                    "/signup",
                  );
                },
                child: Text(
                  getTranslated(LanguageKeys.createAccount, context) ?? '',
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: AppColors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
