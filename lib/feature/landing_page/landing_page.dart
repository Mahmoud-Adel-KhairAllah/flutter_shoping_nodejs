import 'package:flutter/material.dart';

import 'package:flutter_shoping_node_expres_sockit/feature/categories_page/categories_page.dart';
import 'package:flutter_shoping_node_expres_sockit/feature/categories_page/controller/category_details_controller.dart';
import 'package:flutter_shoping_node_expres_sockit/feature/home_page/home_page.dart';
import 'package:flutter_shoping_node_expres_sockit/feature/landing_page/controller/landingpage_controller.dart';
import 'package:flutter_shoping_node_expres_sockit/feature/product/controller/product_details_controller.dart';
import 'package:flutter_shoping_node_expres_sockit/feature/profile_page/profile_page.dart';
import 'package:flutter_shoping_node_expres_sockit/foundation/sp_icon/sp_icon.dart';
import 'package:flutter_shoping_node_expres_sockit/foundation/theme/appColor.dart';
import 'package:get/get.dart';



class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<Widget> pages =  [HomePage(), CategoriesPage(), ProfilePage()];
  int currentIndex = 0;
  LandingPageController landingPageController=Get.put(LandingPageController());
   ProductDetailsController productDetailsController=Get.put(ProductDetailsController());
  CategoryDetailsController categoryDetailsController=Get.put(CategoryDetailsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: AppColor.accentColor,
          selectedLabelStyle: const TextStyle(fontSize: 20),
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: SPIcone(
                    assetImage: 'logo-black.png',
                   isSelected: 0==currentIndex,),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: SPIcone(
                    assetImage: 'categories.png',
                     isSelected: 1==currentIndex,),
                label: 'Categories'),
            BottomNavigationBarItem(
                icon: SPIcone(
                    assetImage: 'profile.png',
                    isSelected: 2==currentIndex,),
                label: 'Profile'),
          ]),
          body: pages[currentIndex],
    );
  }
}
