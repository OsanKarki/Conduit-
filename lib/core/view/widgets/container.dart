
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ConBox extends StatelessWidget {
  final String?icon;
  final String? text;



  const ConBox({
    Key? key,  this.icon , this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text('data'),
        Text('data'),
        Container(
          height: 50,
          width: 50,
          color: const Color(0xffA0F4FF),
        child: FaIcon(
            FontAwesomeIcons.google,



          ),
        )],
    );



  }
}

// child: FaIcon(
// FontAwesomeIcons.google,