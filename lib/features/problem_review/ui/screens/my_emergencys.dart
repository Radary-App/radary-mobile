import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:radary/core/helpers/util/spacing.dart';
import 'package:radary/core/theming/app_colors.dart';
import 'package:radary/features/problem_review/data/models/Problem_model.dart';
import 'package:shimmer/shimmer.dart';

class MyEmergency extends StatelessWidget {
  final List<ProblemModel> problems;

  const MyEmergency({
    super.key,
    required this.problems,
  });

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

        return Container(
          margin: EdgeInsets.symmetric(vertical: 16.h),
          width: 396.w,
          height: 160.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color:
                bluetransparent, // Assuming 'bluetransparent' is defined in app_colors
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: SizedBox(
                  width: 150.w,
                  height: 160.h,
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl: problem.imageUrl,
                    placeholder: (context, url) => Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.white,
                      ),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      problem.title,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
