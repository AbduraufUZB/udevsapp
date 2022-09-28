import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:udevsapp/cubit/homeCubit/home_cubit.dart';
import 'package:udevsapp/routes/macbro_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit()..getData(),
      child: ScreenUtilInit(
        designSize: const Size(375, 870),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: ((context, child) {
          return MaterialApp(
            title: 'UDEVS APP',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            onGenerateRoute: MacBroRoutes.instance.onGenerateRoute,
            debugShowCheckedModeBanner: false,
            initialRoute: "/home",
          );
        }),
      ),
    );
  }
}
