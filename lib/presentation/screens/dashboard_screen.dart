import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../utils/constants/color_constants/color_constants.dart';
import '../../utils/localization/language_constants.dart';
import '../widgets/app_button.dart';
import '../widgets/app_dropdown.dart';
import '../widgets/web_template.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebTemplate(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          SelectableText(
            getTranslated(LanguageKeys.dashboard, context) ?? '',
            style: Theme.of(context).textTheme.headline1!,
          ),
          const SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  AppButton(
                    onTap: () {},
                    height: 45,
                    width: 160,
                    label: getTranslated(LanguageKeys.portfolio, context),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  AppButton(
                    onTap: () {},
                    height: 45,
                    backgroundColor: AppColors.secondaryButton,
                    textColor: AppColors.black,
                    width: 160,
                    label: getTranslated(LanguageKeys.performance, context),
                  ),
                ],
              ),
              Row(
                children: [
                  SelectableText(
                    getTranslated(LanguageKeys.currency, context) ?? '',
                    style: Theme.of(context).textTheme.button!.copyWith(
                          color: AppColors.black,
                        ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  DropDownWidget(
                    headingText: '',
                    width: 150,
                    borderColor: AppColors.textFieldBorder.withOpacity(0.2),
                    color: AppColors.authContainer,
                    hintText: 'AED',
                    list: const ["First", "Second"],
                    onChange: (value) {},
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.175,
            margin: const EdgeInsets.only(
              left: 20,
              right: 35,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.authContainer,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundColor: AppColors.profileAvatar,
                                      child: Image.asset(
                                          'assets/icon/graph_users.png'),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    SelectableText(
                                      '452',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline1!
                                          .copyWith(
                                              fontSize: 28,
                                              fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                SelectableText(
                                  'Total no. of suppliers',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1!
                                      .copyWith(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(
                              left: 30,
                              right: 30,
                            ),
                          ),
                        ),
                        Expanded(
                          child: LineChart(
                            LineChartData(
                              minX: 0,
                              maxX: 11,
                              minY: 0,
                              axisTitleData: FlAxisTitleData(
                                show: false,
                              ),
                              gridData: FlGridData(
                                show: false,
                              ),
                              borderData: FlBorderData(show: false),
                              maxY: 6,
                              titlesData: FlTitlesData(
                                show: false,
                              ),
                              lineBarsData: [
                                LineChartBarData(
                                  colors: [AppColors.borderColorsGraph1],
                                  spots: [
                                    const FlSpot(0, 3),
                                    const FlSpot(2.6, 2),
                                    const FlSpot(4.9, 5),
                                    const FlSpot(6.8, 2.5),
                                    const FlSpot(8, 4),
                                    const FlSpot(9.5, 3),
                                    const FlSpot(11, 4),
                                  ],
                                  isCurved: true,
                                  barWidth: 3.5,
                                  dotData: FlDotData(show: false),
                                  belowBarData: BarAreaData(
                                      show: true,
                                      colors: [
                                        AppColors.borderColorsGraph1
                                            .withOpacity(0.4)
                                      ]),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: AppColors.authContainer,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    margin: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SelectableText(
                                    'Invoices Approved',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2!
                                        .copyWith(fontWeight: FontWeight.w500),
                                  ),
                                  SelectableText(
                                    '10.24M AED',
                                    style:
                                        Theme.of(context).textTheme.headline1,
                                  ),
                                ],
                              ),
                              DropDownWidget(
                                headingText: '',
                                hintText: 'March',
                                borderColor:
                                    AppColors.textFieldBorder.withOpacity(0.2),
                                width: 140,
                                list: const ['First', 'Second'],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: LineChart(
                            LineChartData(
                              minX: 0,
                              maxX: 11,
                              minY: 0,
                              axisTitleData: FlAxisTitleData(
                                show: false,
                              ),
                              gridData: FlGridData(
                                show: true,
                                getDrawingHorizontalLine: (value) {
                                  return FlLine(
                                    color: AppColors.textFieldBorder
                                        .withOpacity(0.1),
                                    strokeWidth: 0,
                                  );
                                },
                                getDrawingVerticalLine: (value) {
                                  return FlLine(
                                    color: AppColors.textFieldBorder
                                        .withOpacity(0.1),
                                    strokeWidth: 1,
                                  );
                                },
                              ),
                              borderData: FlBorderData(show: false),
                              maxY: 6,
                              titlesData: FlTitlesData(
                                show: false,
                              ),
                              lineBarsData: [
                                LineChartBarData(
                                  spots: [
                                    const FlSpot(1, 0),
                                    const FlSpot(2, 3),
                                    const FlSpot(4, 1.5),
                                    const FlSpot(6, 4.5),
                                    const FlSpot(8, 3),
                                    const FlSpot(10, 6),
                                  ],
                                  colors: [AppColors.borderColorsGraph2],
                                  isCurved: false,
                                  barWidth: 3,
                                  dotData: FlDotData(show: false),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: AppColors.authContainer,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    margin: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  SelectableText(
                                    'Total Invoices Raised',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2!
                                        .copyWith(fontWeight: FontWeight.w500),
                                  ),
                                  SelectableText(
                                    '12.24M AED',
                                    style:
                                        Theme.of(context).textTheme.headline1,
                                  ),
                                ],
                              ),
                              DropDownWidget(
                                headingText: '',
                                hintText: 'February',
                                borderColor:
                                    AppColors.textFieldBorder.withOpacity(0.2),
                                width: 140,
                                list: const ['First', 'Second'],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: LineChart(
                            LineChartData(
                              minX: 0,
                              maxX: 11,
                              minY: 0,
                              axisTitleData: FlAxisTitleData(
                                show: false,
                              ),
                              gridData: FlGridData(
                                show: true,
                                getDrawingHorizontalLine: (value) {
                                  return FlLine(
                                    color: AppColors.textFieldBorder
                                        .withOpacity(0.1),
                                    strokeWidth: 0,
                                  );
                                },
                                getDrawingVerticalLine: (value) {
                                  return FlLine(
                                    color: AppColors.textFieldBorder
                                        .withOpacity(0.1),
                                    strokeWidth: 1,
                                  );
                                },
                              ),
                              borderData: FlBorderData(show: false),
                              maxY: 6,
                              titlesData: FlTitlesData(
                                show: false,
                              ),
                              lineBarsData: [
                                LineChartBarData(
                                  spots: [
                                    const FlSpot(1, 0),
                                    const FlSpot(2, 3),
                                    const FlSpot(4, 1.5),
                                    const FlSpot(6, 4.5),
                                    const FlSpot(8, 3),
                                    const FlSpot(10, 6),
                                  ],
                                  isCurved: false,
                                  barWidth: 3,
                                  dotData: FlDotData(show: false),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.175,
            margin: const EdgeInsets.only(
              left: 20,
              right: 35,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.authContainer,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundColor: AppColors.profileAvatar,
                                      child: Image.asset(
                                          'assets/icon/clipart.png'),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SelectableText(
                                          '452',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline1!
                                              .copyWith(
                                                  fontSize: 28,
                                                  fontWeight: FontWeight.w500),
                                        ),
                                        const SelectableText(
                                          '6.24M AED',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 24,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SelectableText(
                                  'Total No. of Pending Invoices',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(
                              left: 30,
                              right: 30,
                            ),
                          ),
                        ),
                        Expanded(
                          child: LineChart(
                            LineChartData(
                              minX: 0,
                              maxX: 11,
                              minY: 0,
                              axisTitleData: FlAxisTitleData(
                                show: false,
                              ),
                              gridData: FlGridData(
                                show: false,
                              ),
                              borderData: FlBorderData(show: false),
                              maxY: 6,
                              titlesData: FlTitlesData(
                                show: false,
                              ),
                              lineBarsData: [
                                LineChartBarData(
                                  colors: [AppColors.redColor],
                                  spots: [
                                    const FlSpot(0, 3),
                                    const FlSpot(2.6, 2),
                                    const FlSpot(4.9, 5),
                                    const FlSpot(6.8, 2.5),
                                    const FlSpot(8, 4),
                                    const FlSpot(9.5, 3),
                                    const FlSpot(11, 4),
                                  ],
                                  isCurved: true,
                                  barWidth: 3.5,
                                  dotData: FlDotData(show: false),
                                  belowBarData: BarAreaData(
                                      show: true,
                                      colors: [
                                        AppColors.redColor.withOpacity(0.4)
                                      ]),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.authContainer,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    margin: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Early Payment Request',
                          style: Theme.of(context)
                              .textTheme
                              .headline2!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              RotatedBox(
                                quarterTurns: -1,
                                child: Text(
                                  'Number',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline2!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Expanded(
                                child: BarChart(
                                  BarChartData(
                                    minY: 0,
                                    maxY: 5,
                                    barGroups: [
                                      BarChartGroupData(
                                        x: 1,
                                        barRods: [
                                          BarChartRodData(
                                            y: 3,
                                            width: 20,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            colors: [AppColors.redColor],
                                          ),
                                        ],
                                      ),
                                      BarChartGroupData(
                                        x: 2,
                                        barRods: [
                                          BarChartRodData(
                                            y: 4,
                                            width: 20,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            colors: [AppColors.textFieldBorder],
                                          )
                                        ],
                                      ),
                                      BarChartGroupData(
                                        x: 3,
                                        barRods: [
                                          BarChartRodData(
                                            y: 5,
                                            width: 20,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            colors: [AppColors.secondaryButton],
                                          )
                                        ],
                                      ),
                                      BarChartGroupData(
                                        x: 4,
                                        barRods: [
                                          BarChartRodData(
                                            y: 2.4,
                                            width: 20,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            colors: [
                                              AppColors.buttonBackground
                                            ],
                                          )
                                        ],
                                      ),
                                      BarChartGroupData(
                                        x: 5,
                                        barRods: [
                                          BarChartRodData(
                                            y: 5,
                                            width: 20,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            colors: [
                                              AppColors.dashboardCategory
                                            ],
                                          )
                                        ],
                                      ),
                                      BarChartGroupData(
                                        x: 6,
                                        barRods: [
                                          BarChartRodData(
                                            y: 1,
                                            width: 20,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            colors: [AppColors.dashboardBar],
                                          )
                                        ],
                                      ),
                                      BarChartGroupData(
                                        x: 7,
                                        barRods: [
                                          BarChartRodData(
                                            y: 3.5,
                                            width: 20,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            colors: [
                                              AppColors.borderColorsGraph1
                                            ],
                                          )
                                        ],
                                      ),
                                      BarChartGroupData(
                                        x: 8,
                                        barRods: [
                                          BarChartRodData(
                                            y: 4.5,
                                            width: 20,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            colors: [
                                              AppColors.borderColorsGraph2
                                            ],
                                          )
                                        ],
                                      ),
                                      BarChartGroupData(
                                        x: 9,
                                        barRods: [
                                          BarChartRodData(
                                            y: 4.9,
                                            width: 20,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            colors: [
                                              AppColors.backgroundColorLight
                                            ],
                                          )
                                        ],
                                      ),
                                      BarChartGroupData(
                                        x: 10,
                                        barRods: [
                                          BarChartRodData(
                                            y: 4,
                                            width: 20,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            colors: [AppColors.redColor],
                                          )
                                        ],
                                      ),
                                      BarChartGroupData(
                                        x: 11,
                                        barRods: [
                                          BarChartRodData(
                                            y: 2.8,
                                            width: 20,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            colors: [AppColors.dashboardBar],
                                          )
                                        ],
                                      ),
                                      BarChartGroupData(
                                        x: 12,
                                        barRods: [
                                          BarChartRodData(
                                            y: 3,
                                            width: 20,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            colors: [AppColors.redColor],
                                          )
                                        ],
                                      ),
                                    ],
                                    axisTitleData: FlAxisTitleData(
                                      show: false,
                                    ),
                                    gridData: FlGridData(
                                      show: true,
                                      getDrawingHorizontalLine: (value) {
                                        return FlLine(
                                          color: AppColors.textFieldBorder
                                              .withOpacity(0.1),
                                          strokeWidth: 1,
                                        );
                                      },
                                      getDrawingVerticalLine: (value) {
                                        return FlLine(
                                          color: AppColors.textFieldBorder
                                              .withOpacity(0.1),
                                          strokeWidth: 0,
                                        );
                                      },
                                    ),
                                    borderData: FlBorderData(
                                      show: false,
                                    ),
                                    titlesData: FlTitlesData(
                                      show: true,
                                      topTitles: SideTitles(
                                        showTitles: false,
                                      ),
                                      rightTitles: SideTitles(
                                        showTitles: false,
                                      ),
                                      bottomTitles: SideTitles(
                                        showTitles: true,
                                        reservedSize: 35,
                                        getTextStyles: (context, value) =>
                                            const TextStyle(
                                          color: Color(0xff68737d),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                        getTitles: (value) {
                                          switch (value.toInt()) {
                                            case 1:
                                              return 'Jan';
                                            case 2:
                                              return 'Feb';
                                            case 3:
                                              return 'Mar';
                                            case 4:
                                              return 'Apr';
                                            case 5:
                                              return 'May';
                                            case 6:
                                              return 'Jun';
                                            case 7:
                                              return 'Jul';
                                            case 8:
                                              return 'Aug';
                                            case 9:
                                              return 'Sep';
                                            case 10:
                                              return 'Oct';
                                            case 11:
                                              return 'Nov';
                                            case 12:
                                              return 'Dec';
                                          }
                                          return '';
                                        },
                                        margin: 8,
                                      ),
                                      leftTitles: SideTitles(
                                        showTitles: true,
                                        getTextStyles: (context, value) =>
                                            const TextStyle(
                                          color: Color(0xff67727d),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                        getTitles: (value) {
                                          switch (value.toInt()) {
                                            case 0:
                                              return '0';
                                            case 1:
                                              return '20';
                                            case 2:
                                              return '40';
                                            case 3:
                                              return '60';
                                            case 4:
                                              return '80';
                                            case 5:
                                              return '100';
                                          }
                                          return '';
                                        },
                                        reservedSize: 35,
                                        margin: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Monthly',
                          style: Theme.of(context)
                              .textTheme
                              .headline2!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
