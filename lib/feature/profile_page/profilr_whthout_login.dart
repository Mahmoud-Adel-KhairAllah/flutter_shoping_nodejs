import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_shoping_node_expres_sockit/feature/profile_page/footer_content.dart';
import 'package:flutter_shoping_node_expres_sockit/foundation/profileItem/profileItem.dart';
import 'package:flutter_shoping_node_expres_sockit/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:flutter_shoping_node_expres_sockit/foundation/theme/appColor.dart';

class ProfileWithoutLogin extends StatelessWidget {
  const ProfileWithoutLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final double topContainerHeight = 190;
    return Column(
      children: [
        Container(
          height: topContainerHeight,
          child: Stack(
            children: [
              Column(children: [
                Container(
                  height: topContainerHeight * .50,
                  color: AppColor.dummyBGColor,
                ),
                Container(
                  height: topContainerHeight * 0.50,
                  color: AppColor.whiteColor,
                )
              ]),
              Positioned(
                  bottom: 20,
                  left: 20,
                  child: Container(
                    height: 132,
                    width: 132,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Image.asset(
                          'assets/images/profile.png',
                          color: AppColor.bodyColor1,
                        ),
                      ),
                    ),
                  )),
              Positioned(
                  bottom: 22,
                  left: 170,
                  child: SPSolidButton(text: 'LOGIN/SIGNUP',width: MediaQuery.of(context).size.width-210,))
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          color: AppColor.whiteColor,
          child: Column(
            children: [
              ProfileItem(
                image: 'orders.png',
                title: 'Orders',
                subtitle: 'Check your order Status',
              ),
              ProfileItem(
                image: 'help.png',
                title: 'Help Center',
                subtitle: 'Help regarding your recent purchase',
              ),
              ProfileItem(
                islast: true,
                image: 'wishlist.png',
                title: 'wishlist',
                subtitle: 'your most loved style',
              )
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          color: AppColor.whiteColor,
          child: Column(
            children: [
              ProfileItem(
                image: 'qr-removebg-preview.png',
                title: 'Scan for copuon',
              ),
              ProfileItem(
                islast: true,
                image: 'refer-eanr.png',
                title: 'Refer & Eanr',
              )
            ],
          ),
        ),
        SizedBox(height: 15,),

         FooterContent(),
        SizedBox(height: 50,),
       
        Text('APP VERSION 0.0.2',
        style: Theme.of(context).textTheme.overline,
        ),
        SizedBox(height: 80,),

      ],
    );
  }
}
