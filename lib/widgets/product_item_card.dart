import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:udevsapp/core/constants/color_const.dart';
import 'package:udevsapp/model/featured_model.dart';

class ProductItemCard extends StatelessWidget {
  final String text;
  final bool isTrue;
  final FeaturedModel featuredModel;
  const ProductItemCard({Key? key, required this.text, required this.isTrue, required this.featuredModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 39.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Icon(Icons.arrow_forward_outlined),
            ],
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        SizedBox(
          height: 225.h,
          width: 600.w,
          child: ListView.builder(
            itemCount: featuredModel.featuredLists![0].products!.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, i) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: GestureDetector(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 152.h,
                        height: 160.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.r),
                          image: DecorationImage(
                            image: CachedNetworkImageProvider(featuredModel.featuredLists![0].products![i].image!),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    Container(
                                      height: 24.h,
                                      width: 24.h,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black12,
                                      ),
                                      child: const Icon(
                                        Icons.favorite,
                                        size: 14,
                                        color: Colors.black45,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Text(
                        featuredModel.featuredLists![0].products![i].name!,
                        style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "от ${featuredModel.featuredLists![0].products![i].price!.price} сум",
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          color: ColorConst.kPriceTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
