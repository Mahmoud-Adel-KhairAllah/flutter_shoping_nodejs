import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_shoping_node_expres_sockit/foundation/theme/appColor.dart';

class GenderButton extends StatelessWidget {
  GenderButton({super.key, required this.onGender, this.gender});
  final Function(String gender) onGender;
  final String? gender;
  final TextStyle styleWhite = TextStyle(color: Colors.white);
  final TextStyle styleAccent = TextStyle(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: AppColor.captionColor),
        ),
        child: Row(children: [
          Flexible(
              flex: 1,
              child: InkWell(
                  onTap: () {
                    onGender('Female');
                  },
                  child: Container(
                      color: gender == "Female"
                          ? AppColor.accentColor
                          : Colors.white,
                      child: Center(child: Text('Female',style: gender=='Female'?styleWhite:styleAccent,))))),
          VerticalDivider(
            width: 2,
            color: Colors.black,
          ),
          Flexible(
              flex: 1,
              child: InkWell(
                  onTap: () {
                    onGender('Male');
                  },
                  child: Container(
                      color: gender == "Male"
                          ? AppColor.accentColor
                          : Colors.white,
                      child: Center(child: Text('Male',style: gender=='Male'?styleWhite:styleAccent)))))
        ]),
      ),
    );
  }
  
}

