import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_shoping_node_expres_sockit/foundation/sp_icon/sp_icon.dart';

class ProfileItem extends StatelessWidget {
  ProfileItem(
      {super.key,
      required this.image,
      required this.title,
       this.subtitle,
      this.islast=false,
      this.onTap
      });
  String image;
  String title;
  String? subtitle;
  bool? islast;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Column(
        children: [
          Container(
            height: 68,
            child: ListTile(
              leading: SPIcone(assetImage: image),
              title:(subtitle == null)?Padding(
                padding: const EdgeInsets.only(top: 18),
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ):Text(
                  title,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              subtitle: subtitle != null
                  ? Text(subtitle!, style: Theme.of(context).textTheme.caption)
                  : Container(),
              trailing: InkWell(
                onTap: () {},
                child: Icon(
                  CupertinoIcons.chevron_forward,
                  size: 16,
                ),
              ),
            ),
          ),
          islast==false? Divider():Container()
        ],
      ),
    );
  }
}
