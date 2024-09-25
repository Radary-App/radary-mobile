import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/networking/api_constants.dart';
import '../../../problem_review/data/models/emergency_problem_response_model.dart';

class ImageDetails extends StatelessWidget {
  const ImageDetails({
    super.key, required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "bdmember.imagePath",
      child: TweenAnimationBuilder(
        key: UniqueKey(),
        tween: Tween<double>(end: 420, begin: 600),
        duration: const Duration(milliseconds: 1000),
        builder: (context, value, child) {
          return SizedBox(
              width: MediaQuery.of(context).size.width,
              height: value,
              child: _contaner());
        },
      ),
    );
  }

  Widget _contaner() {
    return Container(
      width: double.infinity,
      height: 400,
     
      child:  CachedNetworkImage(
                                fit: BoxFit.cover,
                                imageUrl:
                                    "${ApiConstants.apiBaseUrl}${image ?? "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhgJiDwHr5LknxeAAo6Bfmt2wQEp1my8jrrXeLrt7qoLmZCLWD4RmwlPs4TsberWovNSYeubnTKvv9yOnY2TD2qu6CAtQuvgPXI2CxQEHxJs68uATRUm5egomKowMgPdJKF6hPGH7nPuHo/s1600/kilwa+zoldik.gif"}",
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
                          
    );
  }
}
