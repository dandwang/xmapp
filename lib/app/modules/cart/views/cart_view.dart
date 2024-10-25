import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cart_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartView extends GetView<CartController> {
  const CartView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CartView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: 1080.w,
            height: 300.h,
            color: Colors.blue,
            child: const Text("inContainer"),
          )
        ],
      ),
    );
  }
}
