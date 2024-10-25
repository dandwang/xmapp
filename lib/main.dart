import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  
  //配置透明的状态栏
  SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,//状态栏透明
  );
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);

  runApp(
    ScreenUtilInit(
      designSize: const Size(1080, 2400),//设计稿的尺寸
      minTextAdapt: true,//最小文字自适应
      splitScreenMode: true,//分屏模式下表现良好，自动适应屏幕的变化
      
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,//去除右上角的debug
        title: "Application",
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
      ),
    ),
  );
}
