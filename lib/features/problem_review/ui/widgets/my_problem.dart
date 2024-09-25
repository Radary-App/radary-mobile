import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:radary/core/helpers/extensions/app_navigotion.dart';
import 'package:radary/core/helpers/util/spacing.dart';
import 'package:radary/core/networking/api_constants.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/routing/route.dart';
import '../../../../core/theming/app_colors.dart';
import '../../data/models/emergency_problem_response_model.dart';

class EmergencyProblemListView extends StatelessWidget {
  final List<Problem> problems;

  const EmergencyProblemListView({super.key, required this.problems});

  @override
  Widget build(BuildContext context) {
    if (problems.isEmpty) {
      return Center(
        child: Text(
          'No problems available',
          style: TextStyle(fontSize: 16.sp, color: Colors.black),
        ),
      );
    }
    return ListView.builder(
      itemCount: problems.length,
      itemBuilder: (context, index) {
        final problem = problems[index];

        return ProblemItem(
          problem: problem,
        );
      },
    );
  }
}

class ProblemItem extends StatelessWidget {
  const ProblemItem({
    super.key,
    required this.problem,
  });

  final Problem problem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.proplemReview, arguments: problem);
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
                  imageUrl: "${ApiConstants.apiBaseUrl}${problem.photo}",
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
                    problem.userDescription ?? "مفيش بدون وصف",
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
