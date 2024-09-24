import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:radary/core/helpers/extensions/app_navigotion.dart';
import '../../../../../../core/helpers/util/assets_data.dart';
import '../../../../../../core/helpers/util/spacing.dart';
import '../../../../../../core/routing/route.dart';
import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/theming/app_text_styles.dart';
import '../../../../../../core/widgets/add_text_form_field.dart';
import '../../../../../../generated/l10n.dart';
import '../../../widgets/last_container.dart';
import '../../porfile/widget/simple_menu_item.dart';

class EditSetting extends StatelessWidget {
  const EditSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        centerTitle: true,
        title: Text(
          S.of(context).Settings,
          style: AppTextStyles.font24BlackSemibold,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              AssetsData.logoRadaryText,
            ),
          ),
        ],
      ),
      backgroundColor: white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(20),
                SimpleMenuItem(
                  title: S.of(context).ChooseLanguage,
                  iconleft: const Icon(Icons.language, color: blue),
                  icon:
                      const Icon(Icons.arrow_drop_down, size: 30, color: blue),
                ),
                verticalSpace(20),
                const Divider(),
                SimpleMenuItem(
                  title: S.of(context).DarkMode,
                  iconleft: const Icon(Icons.dark_mode, color: blue),
                  icon:
                      const Icon(Icons.arrow_drop_down, size: 30, color: blue),
                ),
                verticalSpace(20),
                const Divider(),
                SimpleMenuItem(
                  title: S.of(context).Notifications,
                  iconleft: const Icon(Icons.notifications, color: blue),
                  icon:
                      const Icon(Icons.arrow_drop_down, size: 30, color: blue),
                ),
                verticalSpace(20),
                const Divider(),
                SimpleMenuItem(
                  title: S.of(context).Permissions,
                  iconleft: const Icon(Icons.security, color: blue),
                  icon:
                      const Icon(Icons.arrow_drop_down, size: 30, color: blue),
                ),
                verticalSpace(20),
                const Divider(),
                SimpleMenuItem(
                  title: S.of(context).Accessibility,
                  iconleft: const Icon(Icons.accessibility, color: blue),
                  icon:
                      const Icon(Icons.arrow_drop_down, size: 30, color: blue),
                ),
                verticalSpace(20),
                const Divider(),
                SimpleMenuItem(
                  title: S.of(context).DeleteAccount,
                  iconleft: const Icon(Icons.delete, color: blue),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
