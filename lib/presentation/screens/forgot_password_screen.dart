import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qlevar_router/qlevar_router.dart';
import '../../utils/constants/color_constants/color_constants.dart';
import '../../utils/localization/language_constants.dart';
import '../widgets/app_button.dart';
import '../widgets/app_text_form_field.dart';
import '../widgets/auth_background_widget.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthBackgroundWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SelectableText(
            getTranslated(LanguageKeys.forgotPassword, context)!,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColors.black),
          ),
          const SizedBox(
            height: 20,
          ),
          SelectableText(
            getTranslated(LanguageKeys.enterEmailOrPhone, context)!,
            style: Theme.of(context).textTheme.headline2!.copyWith(
                  fontWeight: FontWeight.w700,
                ),
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
            height: 15,
          ),
          AppButton(
            height: 40,
            onTap: () {},
            label: getTranslated(LanguageKeys.submit, context),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    QR.to("/");
                  },
                  child: const Icon(Icons.arrow_back_ios)),
              Text(
                getTranslated(LanguageKeys.backLogin, context) ?? '',
                style: Theme.of(context).textTheme.headline2!.copyWith(
                      color: AppColors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
