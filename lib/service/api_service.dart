import 'package:dio/dio.dart';
import 'package:udevsapp/model/banners_model.dart';
import 'package:udevsapp/model/category_model.dart';
import 'package:udevsapp/model/featured_model.dart';

class ApiService {
  static final ApiService _instance = ApiService._init();
  static ApiService get instance => _instance;
  ApiService._init();
  Future<FeaturedModel> getFeaturedApi() async {
    try {
      Response res =
          await Dio().get("https://api.client.macbro.uz/v1/featured-list");
      return FeaturedModel.fromJson(res.data);
    } catch (e) {
      return FeaturedModel();
    }
  }

  Future<CategoriesModel> getCategories() async {
    try {
      Response res =
          await Dio().get("https://api.client.macbro.uz/v1/category");
      return CategoriesModel.fromJson(res.data);
    } catch (e) {
      return CategoriesModel();
    }
  }

  Future<BannersModel> getBanners() async {
    try {
      Response res = await Dio().get("https://api.client.macbro.uz/v1/banner");
      return BannersModel.fromJson(res.data);
    } catch (e) {
      return BannersModel();
    }
  }
}
