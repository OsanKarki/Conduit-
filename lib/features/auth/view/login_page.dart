import 'package:conduit/core/utils/size_constants.dart';
import 'package:conduit/features/articles/global_screen.dart';
import 'package:conduit/features/auth/view/register_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/view/widgets/button.dart';
import '../../../core/view/widgets/container.dart';
import '../../../core/view/widgets/textfields.dart';

class LoginPage extends StatelessWidget {
  static const route = "/loginPage";

  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xff181A1B),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: SC.edgeSpacing),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: const [
                Text('Sign in',
                    style: TextStyle(fontSize: 25, color: Color(0xff6B6A66))),
                SizedBox(
                  height: 30,
                ),
                SecondaryTextField(hint: "Email"),
                SizedBox(
                  height: 30,
                ),
                SecondaryTextField(
                  hint: "Password",
                ),
                SizedBox(
                  height: 40,
                ),
                // const TextField(
                //   decoration: InputDecoration(
                //       hintText: 'password:', prefixIcon: Icon(Icons.lock)),
                // ),
                // TextButton(
                //     onPressed: () {},
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.end,
                //       children: const [
                //         Text(
                //           'Forget your Password?',
                //           style: TextStyle(
                //               fontSize: 15,
                //               fontStyle: FontStyle.italic,
                //               color: Colors.black54),
                //         ),
                //       ],
                //     )),

                PrimaryButton(text: 'Login'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            // const Text('----OR CONTINUE WITH---'),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              // Container(
              //   height: 50,
              //   width: 50,
              //   color: const Color(0xffA0F4FF),
              //   child: const Center(
              //     child: FaIcon(
              //       FontAwesomeIcons.facebook,
              //       color: Color(0xff316346),
              //     ),
              //   ),
              // ),
              // Container(
              //   height: 50,
              //   width: 50,
              //   color: const Color(0xffA0F4FF),
              //   child: const Center(
              //       child: FaIcon(
              //     FontAwesomeIcons.apple,
              //     color: Color(0xff316346),
              //   )),
              // ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Need an account?',
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => RegisterPage(),)) ;
                      Navigator.pushNamed(context, RegisterPage.route);
                    },
                    child: const Text('Register now'))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
