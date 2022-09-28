import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryItemCard extends StatelessWidget {
  final String name;
  final String image;
  const CategoryItemCard({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 165.h,
                height: 166.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: SizedBox(
                  height: 96.h,
                  width: 102.w,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 16.h,
                      ),
                      CachedNetworkImage(
                        width: 100.w,
                        height: 100.h,
                        imageUrl: image,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        name,
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
