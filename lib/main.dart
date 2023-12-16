import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_ui_setup/views/home_view.dart';
import 'package:news_app_ui_setup/views/splash_screen_view.dart';


void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash_screen_view() ,
    );
  }
}
