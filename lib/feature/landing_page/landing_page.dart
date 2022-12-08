import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_shoping_node_expres_sockit/feature/categories_page/categories_page.dart';
import 'package:flutter_shoping_node_expres_sockit/feature/home_page/home_page.dart';
import 'package:flutter_shoping_node_expres_sockit/feature/profile_page/profile_page.dart';
import 'package:flutter_shoping_node_expres_sockit/foundation/sp_icon/sp_icon.dart';
import 'package:flutter_shoping_node_expres_sockit/foundation/theme/appColor.dart';

class LandingPage extends StatefulWidget {
  LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<Widget> pages = [HomePage(), CategoriesPage(), ProfilePage()];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: AppColor.accentColor,
          selectedLabelStyle: TextStyle(fontSize: 20),
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
