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
                width: 102.h,
                height: 96.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.r),
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(image),
                    fit: BoxFit.cover
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 16.h),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      textAlign: TextAlign.center,
                      name,
                      style:
                          const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
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
