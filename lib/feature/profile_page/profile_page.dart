import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_shoping_node_expres_sockit/feature/profile_page/profilr_whthout_login.dart';
import 'package:flutter_shoping_node_expres_sockit/foundation/theme/appColor.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.scaffoldBGtColor,
      appBar: AppBar(
        backgroundColor: AppColor.whiteColor,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Profile',style: Theme.of(context).textTheme.headline6,),
        ),
      ),
      body: SingleChildScrollView(child: ProfileWithoutLogin())
    );
  }
}
