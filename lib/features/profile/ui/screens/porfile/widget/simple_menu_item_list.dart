import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:radary/core/helpers/extensions/app_navigotion.dart';
import 'package:radary/features/profile/ui/screens/porfile/widget/simple_menu_item.dart';

import '../../../../../../core/helpers/util/spacing.dart';
import '../../../../../../core/routing/route.dart';
import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/theming/app_text_styles.dart';
import '../../../../../../core/widgets/add_text_form_field.dart';
import '../../../../../../generated/l10n.dart';

class SimpleMenuItemList extends StatelessWidget {
  const SimpleMenuItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SimpleMenuItem(
          onPressed: () {
            context.pushNamed(Routes.editProfile);
          },
          title: S.of(context).edetProfile,
          iconleft: const Icon(Icons.person, color: blue),
        ),
        const Divider(),
        SimpleMenuItem(
          onPressed: () {
            context.pushNamed(Routes.editSetting);
          },
          title: S.of(context).Settings,
          iconleft: const Icon(Icons.settings, color: blue),
        ),
        const Divider(),
        SimpleMenuItem(
          title: S.of(context).SupportAndHelp,
          iconleft: const Icon(Icons.headphones, color: blue),
        ),
      ],
    );
  }
}
