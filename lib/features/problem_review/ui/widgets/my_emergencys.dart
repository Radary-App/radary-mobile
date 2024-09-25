import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:radary/core/helpers/extensions/app_navigotion.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/helpers/util/spacing.dart';
import '../../../../core/networking/api_constants.dart';
import '../../../../core/routing/route.dart';
import '../../logic/cubit/emergency_problem_response_cubit.dart';
import '../../logic/cubit/emergency_problem_response_state.dart';
import '../../data/models/emergency_problem_response_model.dart';
import 'package:radary/core/theming/app_colors.dart';

class MyEmergency extends StatelessWidget {
  const MyEmergency({
    super.key,
    required this.emergenciesList,
  });
  final List<Emergency> emergenciesList;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmergencyProblemResponseCubit,
        EmergencyProblemResponseState>(
      buildWhen: (previous, current) => current is Success || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
          success: (emergenciesList, _) {
            if (emergenciesList == null || emergenciesList.isEmpty) {
              return Center(
                child: Text(
                  'No emergencies available',
                  style: TextStyle(fontSize: 16.sp, color: Colors.black),
                ),
              );
            }

            return ListView.builder(
              itemCount: emergenciesList.length,
              itemBuilder: (context, index) {
                final emergency = emergenciesList[index];

                return EmergencyItem(emergency: emergency);
              },
            );
          },
          error: (errorHandler) =>
              const Center(child: Text('Error loading emergencies')),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}

class EmergencyItem extends StatelessWidget {
  const EmergencyItem({
    super.key,
    required this.emergency,
  });

  final Emergency emergency;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.emergencyReview, arguments: emergency);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 16.h),
        width: 396.w,
        height: 180.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white, // Optional: Add background color
        ),
        child: Column(
          children: [
            SizedBox(
              height: 130.h,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: "${ApiConstants.apiBaseUrl}${emergency.photo}",
                  placeholder: (context, url) => Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.white,
                    ),
                  ),
                  errorWidget: (context, url, error) => Image.network(
                    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhgJiDwHr5LknxeAAo6Bfmt2wQEp1my8jrrXeLrt7qoLmZCLWD4RmwlPs4TsberWovNSYeubnTKvv9yOnY2TD2qu6CAtQuvgPXI2CxQEHxJs68uATRUm5egomKowMgPdJKF6hPGH7nPuHo/s1600/kilwa+zoldik.gif",
                  ),
                ),
              ),
            ),
            verticalSpace(10), // Adjusted spacing
            Row(
              children: [
                SizedBox(
                  width: 350.w,
                  child: Text(
                    emergency.titleArabic ?? "مفيش بدون وصف",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.right,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
