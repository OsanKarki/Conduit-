import 'package:conduit/core/view/widgets/textfields.dart';
import 'package:conduit/features/auth/view/login_page.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/size_constants.dart';
import '../../../core/view/widgets/button.dart';


double edgeSpacing = 10;

class RegisterPage extends StatelessWidget {
  static const route = "registerPage";

  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
           backgroundColor:  Color(0xff181A1B),


          shadowColor: Color(0xff181A1B),


        ),
          backgroundColor: Color(0xff181A1B),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: SC.edgeSpacing),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign up ',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500,color: Color(0xffe6B6A66)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                // TextField(
                //   decoration: InputDecoration(
                //     prefixIcon: Icon(Icons.person),
                //     hintText: 'fullname',
                //   ),
                // ),
                // SizedBox(
                //   height: 20,
                // ),
                // TextField(
                //   decoration: InputDecoration(
                //     prefixIcon: Icon(Icons.mail),
                //     hintText: 'Email',
                //   ),
                // ),
                // SizedBox(
                //   height: 20,
                // ),
                // TextField(
                //   decoration: InputDecoration(
                //     prefixIcon: Icon(Icons.phone),
                //     hintText: 'Phone number',
                //   ),
                // ),
                // SizedBox(
                //   height: 20,
                // ),
                // TextField(
                //   decoration: InputDecoration(
                //     prefixIcon: Icon(Icons.vpn_key),
                //     hintText: 'Password',
                //   ),
                // ),
                const SecondaryTextField(
                  icon: Icons.person,
                  hint: 'Username',

                ),
            const SizedBox(
                height: 30,
               ),
                const SecondaryTextField(
                  icon: Icons.email,
                  hint: 'Email',

                ),
                const SizedBox(
                  height: 30,
                ),
                const SecondaryTextField(
                  // icon: Icons.phone,
                  hint: 'password',

                ),





                const SizedBox(
                  height: 40,
                ),
                const PrimaryButton(
                  text: 'Signup',
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('already a member?',style: TextStyle(color: Colors.white),),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ));
                        },
                        child: const Text('SIGN IN'))
                  ],
                )
              ],
            ),
          )),
    );
  }
}
