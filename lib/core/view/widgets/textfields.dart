import 'package:flutter/material.dart';

class SecondaryTextField extends StatelessWidget {
  final String? hint;
  final IconData? icon;

  const SecondaryTextField({Key? key, this.hint, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextField(



      decoration: InputDecoration(

        hintText: hint,
        hintStyle: const TextStyle(color: Color(0xffe6B6A66)),
        filled: true,
        fillColor: const Color(0xff2A3442),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11),



        ),





        ),
      );
   

  }
}


