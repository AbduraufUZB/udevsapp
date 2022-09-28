import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_icon/svg_icon.dart';
import 'package:udevsapp/core/constants/color_const.dart';
import 'package:udevsapp/cubit/homeCubit/home_cubit.dart';
import 'package:udevsapp/cubit/homeCubit/home_state.dart';
import 'package:udevsapp/widgets/category_item_card.dart';
import 'package:udevsapp/widgets/custom_bottom_navbar.dart';
import 'package:udevsapp/widgets/product_item_card.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  bool isTrue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF9F9FD),
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if (state is HomeLoaded) {
              return Column(
                children: [
                  Container(
                    height: 112.h,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 52.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 44.h,
                                width: 307.w,
                                child: TextField(
                                  style: const TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.fromLTRB(
                                        20.0, 5.0, 20.0, 15.0),
                                    prefixIcon: const Icon(
                                      Icons.search,
                                      color: Colors.grey,
                                    ),
                                    fillColor: const Color(0xffF9F9FD),
                                    hintText: "Поиск",
                                    hintStyle:
                                        const TextStyle(color: Colors.grey),
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(8.r),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 16.41.w,
                              ),
                              const SvgIcon(
                                  "assets/icons/notification_icon.svg")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 672.h,
                    child: ListView(
                      children: [
                        SizedBox(
                          height: 16.h,
                        ),
                        Container(
                            width: 343.w,
                            height: 180.h,
                            margin: EdgeInsets.symmetric(horizontal: 16.w),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: Swiper(
                              autoplay: true,
                              outer: false,
                              itemBuilder: (ctx, i) {
                                return Container(
                                  height: 180.h,
                                  width: 343.w,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(8.r),
                                    image: DecorationImage(
                                        image: NetworkImage(state
                                            .bannersModel.banners![i].image!),
                                        fit: BoxFit.cover),
                                  ),
                                );
                              },
                              pagination: SwiperPagination(
                                margin: const EdgeInsets.all(5.0),
                                builder: DotSwiperPaginationBuilder(
                                  color: ColorConst.kDotIndicatorDisabledColor,
                                  activeColor: ColorConst.kBlackColor,
                                ),
                              ),
                              itemCount: state.bannersModel.banners!.length,
                            )),
                        ProductItemCard(
                          text: "Новые",
                          isTrue: false,
                          featuredModel: state.featuredModel,
                        ),
                        SizedBox(
                          height: 32.h,
                        ),
                        Padding(
                          padding: EdgeInsets.all(16.0.w),
                          child: Text(
                            "Категории",
                            style: TextStyle(
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        GridView.builder(
                            itemCount: state.categoriesModel.categories!.length,
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisExtent: 216.h,
                            ),
                            itemBuilder: (context, int index) {
                              return CategoryItemCard(
                                name: state
                                    .categoriesModel.categories![index].name
                                    .toString(),
                                image: state
                                    .categoriesModel.categories![index].image
                                    .toString(),
                              );
                            }),
                      ],
                    ),
                  ),
                ],
              );
            } else if (state is HomeError) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const[
                  Center(child: Text("NO DATA")),
                ],
              );
            } else {
              return const Center(
                  child: Center(child: CircularProgressIndicator.adaptive()));
            }
          },
        ),
        bottomNavigationBar: const CustomBottomNavBar());
  }
}
