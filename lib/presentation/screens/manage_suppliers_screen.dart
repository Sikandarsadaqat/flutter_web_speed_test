import 'package:flutter/material.dart';
import '../../utils/constants/color_constants/color_constants.dart';
import '../../utils/localization/language_constants.dart';
import '../widgets/app_dropdown.dart';
import '../widgets/app_text_form_field.dart';
import '../widgets/custom_divider.dart';
import '../widgets/web_template.dart';

class ManageSuppliersScreen extends StatelessWidget {
  const ManageSuppliersScreen({Key? key}) : super(key: key);
  static const routerAddress = 'manage_suppliers';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return WebTemplate(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          SelectableText(
            getTranslated(LanguageKeys.manageSuppliers, context) ?? '',
            style: Theme.of(context).textTheme.headline1!,
          ),
          const SizedBox(
            height: 15,
          ),
          const CustomDivider(width: double.infinity),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SelectableText(
                      getTranslated(LanguageKeys.show, context) ?? '',
                      style: TextStyle(
                        color: AppColors.textFieldBorder.withOpacity(0.9),
                        fontSize: 18,
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  DropDownWidget(
                    headingText: '',
                    hintText: '10',
                    hintStyle: TextStyle(
                      color: AppColors.textFieldBorder.withOpacity(0.3),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    width: 90,
                    borderColor: AppColors.textFieldBorder.withOpacity(0.3),
                    list: const [
                      '10',
                      '20',
                      '30',
                      '40',
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 200,
                child: Row(
                  children: [
                    SelectableText(
                        getTranslated(LanguageKeys.search, context) ?? '',
                        style: TextStyle(
                          color: AppColors.textFieldBorder.withOpacity(0.9),
                          fontSize: 18,
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: AppTextFormField(
                        borderColor: AppColors.textFieldBorder.withOpacity(0.3),
                        hintTextStyle: TextStyle(
                          color: AppColors.textFieldBorder.withOpacity(0.3),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        hintText: getTranslated(LanguageKeys.search, context),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            color: AppColors.listTopCategoryContainer,
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: width * 0.036,
                  child: Checkbox(
                    onChanged: (bool? value) {},
                    value: false,
                    side: BorderSide(
                      color: AppColors.textFieldBorder.withOpacity(0.3),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.118,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: SelectableText(
                      getTranslated(LanguageKeys.supplierID, context) ?? '',
                      style: const TextStyle(
                        color: AppColors.textFieldBorder,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: width * 0.16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SelectableText(
                        getTranslated(LanguageKeys.supplierName, context) ?? '',
                        style: const TextStyle(
                          color: AppColors.textFieldBorder,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.keyboard_arrow_up,
                            size: 20,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: 20,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: width * 0.145,
                  child: SelectableText(
                    getTranslated(LanguageKeys.supplierCode, context) ?? '',
                    style: const TextStyle(
                      color: AppColors.textFieldBorder,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: width * 0.11,
                  child: SelectableText(
                    getTranslated(LanguageKeys.registrationDate, context) ?? '',
                    style: const TextStyle(
                      color: AppColors.textFieldBorder,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: width * 0.09,
                  child: SelectableText(
                    getTranslated(LanguageKeys.status, context) ?? '',
                    style: const TextStyle(
                      color: AppColors.textFieldBorder,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: width * 0.09,
                  child: SelectableText(
                    getTranslated(LanguageKeys.actions, context) ?? '',
                    style: const TextStyle(
                      color: AppColors.textFieldBorder,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemBuilder: (ctx, index) {
              var date = DateTime.now();
              date = date.subtract(Duration(days: index));
              return Container(
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      color: AppColors.textFieldBorder.withOpacity(0.1),
                    ),
                    left: BorderSide(
                      color: AppColors.textFieldBorder.withOpacity(0.1),
                    ),
                    bottom: BorderSide(
                      color: AppColors.textFieldBorder.withOpacity(0.1),
                    ),
                  ),
                ),
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 10,
                  bottom: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: width * 0.036,
                      child: Checkbox(
                        onChanged: (bool? value) {},
                        value: false,
                        side: BorderSide(
                          color: AppColors.textFieldBorder.withOpacity(0.3),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.118,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: SelectableText(
                          '110${index + 1}',
                          style: const TextStyle(
                            color: AppColors.textFieldBorder,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: width * 0.16,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icon/suppliers_icon.png'),
                          const SizedBox(
                            width: 20,
                          ),
                          const Expanded(
                            child: SelectableText(
                              'Majid Al Futtaiam',
                              style: TextStyle(
                                color: AppColors.textFieldBorder,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: width * 0.145,
                      child: SelectableText(
                        'SP-110${index + 1}',
                        style: const TextStyle(
                          color: AppColors.textFieldBorder,
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: width * 0.11,
                      child: SelectableText(
                        '${date.day}/${date.month}/${date.year}',
                        style: const TextStyle(
                          color: AppColors.textFieldBorder,
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: width * 0.09,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green,
                        ),
                        child: const SelectableText(
                          'Active',
                          style: TextStyle(
                            color: AppColors.authContainer,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: width * 0.09,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icon/more_icon.png'),
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset('assets/icon/action_icon.png'),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: 5,
          ),
        ],
      ),
    );
  }
}
