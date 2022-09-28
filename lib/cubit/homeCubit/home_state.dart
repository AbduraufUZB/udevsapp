import 'package:udevsapp/model/banners_model.dart';
import 'package:udevsapp/model/category_model.dart';
import 'package:udevsapp/model/featured_model.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final BannersModel bannersModel;
  final CategoriesModel categoriesModel;
  final FeaturedModel featuredModel;

  HomeLoaded(
      {required this.bannersModel,
      required this.categoriesModel,
      required this.featuredModel});
}

class HomeError extends HomeState {
  final String failure;
  HomeError(this.failure);
}
