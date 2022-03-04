import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qlevar_router/qlevar_router.dart';

import '../../utils/constants/asset_constants.dart';
import '../../utils/constants/color_constants/color_constants.dart';
import '../../utils/localization/language_constants.dart';
import '../widgets/app_button.dart';
import '../widgets/app_dropdown.dart';
import '../widgets/app_text_form_field.dart';
import '../widgets/auth_background_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthBackgroundWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(AssetsConstants.faureeLogo),
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
            title: getTranslated(LanguageKeys.companyName, context),
            hintText: getTranslated(LanguageKeys.companyName, context),
            titleSpacing: 5,
          ),
          const SizedBox(
            height: 20,
          ),
          AppTextFormField(
            title: getTranslated(LanguageKeys.email, context),
            hintText: getTranslated(LanguageKeys.email, context),
            titleSpacing: 5,
          ),
          const SizedBox(
            height: 20,
          ),
          AppTextFormField(
            title: getTranslated(LanguageKeys.password, context),
            hintText: getTranslated(LanguageKeys.password, context),
            titleSpacing: 5,
            obscureText: true,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              DropDownWidget(
                onChange: (value) {},
                width: 150,
                titleSpacing: 3,
                headingText: getTranslated(LanguageKeys.phoneNo, context) ?? '',
                list: const ['First', 'Second'],
                hintText: '+971',
                dropdownMode: Mode.MENU,
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 2,
                  ),
                  child: const AppTextFormField(
                    hintText: 'XXX XXX XXXX',
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          DropDownWidget(
            onChange: (value) {},
            width: double.infinity,
            headingText:
                getTranslated(LanguageKeys.businessType, context) ?? '',
            list: const ['First', 'Second'],
            hintText: getTranslated(LanguageKeys.businessType, context) ?? '',
            dropdownMode: Mode.MENU,
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
                getTranslated(LanguageKeys.policyTerms, context)!,
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
              QR.to("/otp");
            },
            label: getTranslated(LanguageKeys.signUp, context),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SelectableText(
                getTranslated(LanguageKeys.alreadyAccount, context) ?? '',
                style: Theme.of(context).textTheme.headline2!.copyWith(
                      color: AppColors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              InkWell(
                onTap: () {
                  QR.to("/");
                },
                child: Text(
                  getTranslated(LanguageKeys.signInInstead, context) ?? '',
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
