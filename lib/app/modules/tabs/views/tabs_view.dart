import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tabs_controller.dart';

class TabsView extends GetView<TabsController> {
  const TabsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          // appBar: AppBar(
          //   title: const Text('TabsView'),
          //   centerTitle: true,
          // ),
          body: PageView(
            controller: controller.pageController,
            children: controller.pages,
            onPageChanged: (value) => controller.setCurrentIndex(value),
          ),
          bottomNavigationBar: BottomNavigationBar(
            fixedColor: Colors.red, //选中的颜色
            iconSize: 35, //底部菜单大小
            currentIndex: controller.currentIndex.value,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              controller.setCurrentIndex(index);
              controller.pageController.jumpToPage(index);
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
              BottomNavigationBarItem(icon: Icon(Icons.category), label: '分类'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.room_service), label: '服务'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), label: '购物车'),
              BottomNavigationBarItem(icon: Icon(Icons.people), label: '用户'),
            ],
          ),
        ));
  }
}
