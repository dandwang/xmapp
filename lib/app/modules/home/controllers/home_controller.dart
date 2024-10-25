import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  RxBool flag = false.obs;

  final ScrollController scrollController = ScrollController();

  List swiperList = [
    {"url": "https://www.itying.com/images/focus/focus01.png"},
    {"url": "https://www.itying.com/images/focus/focus02.png"},
  ];

  void changeFlag() {
    flag.value = !flag.value;
  }

  @override
  void onInit() {
    super.onInit();
    getFocusData();
    addScrollController();

    formatJson();
  }

  void addScrollController() {
    scrollController.addListener(() {
      var p = scrollController.position.pixels;

      if (p > 10 && p < 30 && flag.value == false) {
        flag.value = true;
        update();
      }
      if (p < 10 && flag.value == true) {
        flag.value = false;
        update();
      }
    });
  }

  getFocusData() async {
    var res = await Dio().get("https://miapp.itying.com/api/focus");
    // print(res);
  }

  formatJson(){
    // var jsonStr= '{"result":[{"_id":"59f6ef443ce1fb0fb02c7a43","title":"米家智能空气炸烤箱","status":"1","pic":"public\\upload\\zon0TTXnXUs1z5meqZhP5aNF.png","url":"12","position":1},{"_id":"5a012efb93ec4d199c18d1b4","title":"新品聚光灯","status":"1","pic":"public\\upload\\-sXMTb2kFHmRlt2BAtI47_54.png","url":"14","position":1},{"_id":"632d6a77b2aa96054cfcc79a","title":"小米新品发布会","status":"1","pic":"public\\upload\\NssHlEUvoWU36EpuF3S1URMB.png","url":"4","position":1}]}';

    // var res= json.decode(jsonStr);
    // print("title");
    // print(res['result']);
  }



  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
