

import 'package:conduit/features/articles/global_screen.dart';
import 'package:conduit/features/auth/view/login_page.dart';
import 'package:conduit/features/auth/view/register_page.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xff367E36),//mathi battrey tower haruko color chnage garauna ko lagi use gareko .//
  ));
  runApp(const AppWidget());
}
class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:LoginPage.route ,
      theme: ThemeData(
        primarySwatch: Colors.green
      ),

      routes:{
        RegisterPage.route:(context)=> const RegisterPage(),
       LoginPage.route:(context)=> const LoginPage(),
        GlobalScreen.route: (context) => const GlobalScreen(),
      },


    );
  }
}
