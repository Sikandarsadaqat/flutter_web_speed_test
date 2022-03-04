import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:qlevar_router/qlevar_router.dart';
import '../../utils/localization/language_constants.dart';
import '../widgets/app_button.dart';
import '../widgets/auth_background_widget.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthBackgroundWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SelectableText(getTranslated(LanguageKeys.resetPassword, context)!,
              style: Theme.of(context).textTheme.headline1!),
          const SizedBox(
            height: 20,
          ),
          SelectableText(
            getTranslated(LanguageKeys.verificationSend, context)!,
            style: Theme.of(context).textTheme.headline2!.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
          const SizedBox(
            height: 20,
          ),
          SelectableText(
            getTranslated(LanguageKeys.emailPhone, context)!,
            style: Theme.of(context).textTheme.headline2!.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
          const SizedBox(
            height: 20,
          ),
          SelectableText(
            getTranslated(LanguageKeys.digitCode, context)!,
            style: Theme.of(context).textTheme.headline2!.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
          const SizedBox(
            height: 20,
          ),
          OTPTextField(
            length: 6,
            width: double.infinity,
            outlineBorderRadius: 3,
            fieldWidth: 55,
            margin: const EdgeInsets.all(0),
            style: const TextStyle(fontSize: 17),
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldStyle: FieldStyle.box,
            onCompleted: (pin) {},
          ),
          const SizedBox(
            height: 20,
          ),
          AppButton(
            height: 40,
            onTap: () {
              QR.to("/home");
            },
            label: getTranslated(LanguageKeys.verify, context),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: SelectableText(
                  getTranslated(LanguageKeys.didntGetCOde, context) ?? '',
                  style: Theme.of(context).textTheme.headline2!,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                getTranslated(LanguageKeys.resend, context) ?? '',
                style: Theme.of(context).textTheme.headline2!.copyWith(
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
