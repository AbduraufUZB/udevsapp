import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udevsapp/cubit/homeCubit/home_state.dart';
import 'package:udevsapp/model/banners_model.dart';
import 'package:udevsapp/model/category_model.dart';
import 'package:udevsapp/model/featured_model.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  Future getData() async {
    emit(HomeLoading());
    BannersModel? bannersModel;
    CategoriesModel? categoriesModel;
    FeaturedModel? featuredModel;
    try {
      Response res =
          await Dio().get("https://api.client.macbro.uz/v1/featured-list");
      featuredModel = FeaturedModel.fromJson(res.data);
    } catch (e) {
      emit(HomeError(e.toString()));
    }
    try {
      Response res =
          await Dio().get("https://api.client.macbro.uz/v1/category");
      categoriesModel = CategoriesModel.fromJson(res.data);
    } catch (e) {
      emit(HomeError(e.toString()));
    }
    try {
      Response res = await Dio().get("https://api.client.macbro.uz/v1/banner");
      bannersModel = BannersModel.fromJson(res.data);
    } catch (e) {
      emit(HomeError(e.toString()));
    }
    emit(HomeLoaded(
        bannersModel: bannersModel!,
        categoriesModel: categoriesModel!,
        featuredModel: featuredModel!));
  }
}
