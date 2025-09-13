
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/core/utils/app_colors.dart';

import 'core/network/dio_factory.dart';
import 'features/onbording/views/splash_view.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await DioFactory.initialize();
  runApp(const NewsApp());
}
class NewsApp extends StatelessWidget {
  const NewsApp({super.key});
  @override
  Widget build(BuildContext context) {
     return ScreenUtilInit(
        designSize: const Size(430, 932),
    builder:  (context , child)=> MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:Colors.white,
      ),
      home: SplashView(),
    ),
    );
  }
}
