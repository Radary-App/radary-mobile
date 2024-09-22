// ignore_for_file: unnecessary_string_interpolations

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../../core/helpers/util/assets_data.dart';
import '../../../../../../core/helpers/util/spacing.dart';
import '../../../../../../core/theming/app_colors.dart';
import '../../../../../../core/theming/app_text_styles.dart';
import '../../../../../../generated/l10n.dart';
import '../widget/sign_out.dart';
import '../widget/simple_menu_item_list.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
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
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(40),
                //cercle avter
                const Center(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                    ),
                    radius: 80,
                  ),
                ),

                verticalSpace(20),
                const SimpleMenuItemList(),
                const Divider(),
                verticalSpace(25),

                const SignOut(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
