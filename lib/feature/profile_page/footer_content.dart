import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_shoping_node_expres_sockit/foundation/sp_text_button/sp_text_button.dart';

class FooterContent extends StatelessWidget {
  const FooterContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SPTextButton(text:'FAQs'),
      SPTextButton(text:'ABOUT US'),
      SPTextButton(text:'TERM OF USE'),
      SPTextButton(text:'PRIVACY POLICY'),

    ],);
  }
}