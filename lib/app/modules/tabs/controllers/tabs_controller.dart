import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home/views/home_view.dart';
import '../../category/views/category_view.dart';
import '../../give/views/give_view.dart';
import '../../user/views/user_view.dart';
import '../../cart/views/cart_view.dart';

class TabsController extends GetxController {
  //TODO: Implement TabsController

  RxInt currentIndex = 0.obs;

  PageController pageController = PageController(initialPage: 0);
  final List<Widget> pages =[
    const HomeView(),
    const CategoryView(),
    const GiveView(),
    const CartView(),
    const UserView(),
  ];
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  setCurrentIndex(index) {
    currentIndex.value = index;
    update();
  }
}
