import 'package:animation/screen/detail/view/detail_screen.dart';
import 'package:animation/screen/home/view/home_screen.dart';
import 'package:animation/screen/splash/view/splash_screen.dart';
import 'package:flutter/material.dart';

Map<String,WidgetBuilder> app_routes={
  '/':(context)=>const SplashScreen(),
  'home':(context)=>const HomeScreen(),
  'detail':(context)=>const DetailScreen(),

};
