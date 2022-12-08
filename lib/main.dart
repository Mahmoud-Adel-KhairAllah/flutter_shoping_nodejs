import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'feature/landing_page/landing_page.dart';
import 'foundation/theme/appColor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      
      theme: ThemeData(
     textTheme: const TextTheme(
      headline6: TextStyle(fontSize: 14.5,wordSpacing: 0.15,
      color: AppColor.heading6tColor
      ),
      bodyText1: TextStyle(color: AppColor.bodyColor1,fontSize: 14),
      caption: TextStyle(color: AppColor.captionColor,fontSize: 11)
     ),
      
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  LandingPage(),
    );
  }
}

