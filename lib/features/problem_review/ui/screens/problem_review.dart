import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:radary/core/theming/app_colors.dart';
import 'package:radary/features/problem_review/ui/screens/all_problem.dart';
import 'package:radary/features/problem_review/ui/screens/emergency_list_builder.dart';
import 'package:radary/features/problem_review/ui/screens/emergency_problem_bloc_builder.dart';
import 'package:radary/generated/l10n.dart';

import '../../../../core/helpers/util/assets_data.dart';
import '../../../../core/theming/app_text_styles.dart';

class ProblemReview extends StatelessWidget {
  const ProblemReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      AssetsData.logoRadaryText,
                    ),
                    Text(
                      S.of(context).MyReports,
                      style: AppTextStyles.font24BlackRegular,
                    ),
                  ],
                ),
                ButtonsTabBar(
                  backgroundColor: blue,
                  unselectedBackgroundColor: Colors.white,
                  labelStyle: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  width: 115,
                  unselectedBorderColor: blue,
                  contentPadding: const EdgeInsets.all(10),
                  contentCenter: true,
                  borderWidth: 1,
                  radius: 15,
                  tabs: [
                    Tab(
                      text: S.of(context).All,
                    ),
                    Tab(
                      text: S.of(context).Accidents,
                    ),
                    Tab(
                      text: S.of(context).Issues,
                    ),
                  ],
                ),
                const Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      EmergencyProblemBlocBuilder(),
                      EmergencyListBlocBuilder(),
                      EmergencyProblemBlocBuilder(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
