import 'package:animation/screen/home/provider/home_provider.dart';
import 'package:animation/utils/routes_app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider.value(value: HomeProvider())
    ],
    child: MaterialApp(
      routes: app_routes,
    ),
    )
  );
}