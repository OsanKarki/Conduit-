import 'package:flutter/material.dart';

import '../../../features/articles/global_screen.dart';


class PrimaryButton extends StatelessWidget {
  final String?  text;



  const PrimaryButton({
    Key? key,this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context,GlobalScreen.route );
        },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9)
        ),
      ),
        child: Container(
          width:200,


            child: Center(child: Text(text!))),
        );
  }
}