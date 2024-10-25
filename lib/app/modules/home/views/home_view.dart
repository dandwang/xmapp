import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:xmshop/app/modules/cart/views/cart_view.dart';

import '../controllers/home_controller.dart';
import '../../../services/keepAliveWrapper.dart';
import '../../../services/ityingFonts.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  Widget _appbar() {
    return Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: Obx(() {
          return AppBar(
            leading: const Icon(
              ItyingFonts.xiaomi,
              color: Colors.white,
              fill: 0.2,
            ),
            title: Container(
              width: 620.w,
              height: 96.h,
              decoration: BoxDecoration(
                color: const Color.fromARGB(230, 252, 243, 236),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(34.w, 0, 4, 0),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "手机",
                    style: TextStyle(fontSize: 32.sp, color: Colors.black54),
                  )
                ],
              ),
            ),
            centerTitle: true,
            backgroundColor:
                controller.flag.value ? Colors.white : Colors.transparent,
            elevation: 0,
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.qr_code)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.message)),
            ],
          );
        }));
  }

  Widget _homePage() {
    return Positioned(
      top: -60.h,
      left: 0,
      right: 0,
      bottom: 0,
      // https://www.itying.com/images/focus/focus02.png
      child: ListView(
        controller: controller.scrollController,
        children: [
          Container(
            width: 1080.w,
            height: 982.h,
            child: Swiper(
              itemBuilder: (context, index) {
                return Image.network(
                  controller.swiperList[index]["url"],
                  fit: BoxFit.fill,
                );
              },
              itemCount: controller.swiperList.length,
              // viewportFraction: 0.8,
              // scale: 0.9,
              autoplay: true,
              pagination: const SwiperPagination(),
            ),
          )
        ],
      ),
    );
  }

  


  @override
  Widget build(BuildContext context) {
    return Keepalivewrapper(
        child: Scaffold(
            // appBar: AppBar(
            //   title: const Text('HomeView'),
            //   centerTitle: true,
            //   backgroundColor: Colors.transparent,
            //   elevation: 0,
            // ),
            body: Stack(
      children: [
        _homePage(),
        _appbar(),
      ],
    )));
  }
}
