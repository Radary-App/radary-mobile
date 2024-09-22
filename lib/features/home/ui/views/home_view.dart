import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:radary/features/home/logic/logic.dart';
import 'package:radary/features/home/ui/views/widgets/home_view_recored.dart';
import 'package:radary/generated/l10n.dart';
import '../../../../core/helpers/util/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/widgets/add_text_form_field.dart';
import '../../logic/cubit/addproplem_cubit.dart';
import '../widgets/home_app_bar.dart';
import 'widgets/widgets_home_views/home_views_banner.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
          child: Column(
            children: [
              const HomeAppBar(),
              verticalSpace(20),
              SizedBox(
                height: 48.h,
                child: AppTextFormField(
                    suffixIcon: const Icon(
                      Icons.search,
                      color: blue,
                    ),
                    hintText: '',
                    prefixIcon: const Icon(Icons.mic, color: blue),
                    validator: (value) {}),
              ),
              verticalSpace(40),
              const HomeViewBanner(),
              verticalSpace(40),
              HomeViewRecorded(
                text: S.of(context).AccidentReport,
                onTap: () {
                  context.read<AddProblemCubit>().pickImage(context);
                },
              ),
              verticalSpace(60),
              HomeViewRecorded(
                text: S.of(context).IssuesReport,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
