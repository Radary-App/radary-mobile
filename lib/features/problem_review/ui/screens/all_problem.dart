import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:radary/core/helpers/util/spacing.dart';
import 'package:radary/core/networking/api_constants.dart';
import 'package:shimmer/shimmer.dart';
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
                          "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhgJiDwHr5LknxeAAo6Bfmt2wQEp1my8jrrXeLrt7qoLmZCLWD4RmwlPs4TsberWovNSYeubnTKvv9yOnY2TD2qu6CAtQuvgPXI2CxQEHxJs68uATRUm5egomKowMgPdJKF6hPGH7nPuHo/s1600/kilwa+zoldik.gif")),
                ),
              ),
              verticalSpace(10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      problem.aiDescriptionArabic ?? "مفيش بدون وصف",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 4, 
                      overflow: TextOverflow
                          .ellipsis,
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
