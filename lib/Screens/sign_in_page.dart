// ignore_for_file: constant_identifier_names

import 'package:botttom_bar_with_bloc/Routes/routes.dart';
import 'package:botttom_bar_with_bloc/Widgets/Custom_Button.dart';
import 'package:botttom_bar_with_bloc/Widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';

import '../CustomColors/colors_page.dart';

// ignore: must_be_immutable
class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);
  static const String SPLASH_PAGE = '/';
  TextEditingController phoneNumberUserNameOrEmailController =
      TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorsClass.appBackGroundColor,
      appBar: AppBar(
        backgroundColor: ColorsClass.appBarColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: Text(
              'Share that Look!',
              style: TextStyle(
                  color: ColorsClass.appBoldColor,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: height * .10,
            ),
            customTextFormField(
                context: context,
                hintText: 'Phone number,username,or email',
                controller: phoneNumberUserNameOrEmailController),
            SizedBox(
              height: height * .03,
            ),
            customTextFormField(
                context: context,
                hintText: 'Password',
                controller: passwordController),
            SizedBox(
              height: height * .03,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Pages.EXPLORE_PAGE,
                  );
                },
                child: customButton(context: context, text: 'Log in')),
            SizedBox(
              height: height * .04,
            ),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 13),
                children: <TextSpan>[
                  TextSpan(
                      text: '_____________________ ',
                      style: TextStyle(color: Color(0xffFFFFFF))),
                  TextSpan(
                      text: 'Or ', style: TextStyle(color: Color(0xffFFFFFF))),
                  TextSpan(
                      text: '_____________________',
                      style: TextStyle(color: Color(0xffFFFFFF))),
                ],
              ),
            ),
            SizedBox(
              height: height * .05,
            ),
            SizedBox(
              height: height * .06,
              width: width * .80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/FacebookLogo1.png'),
                  ),
                  SizedBox(
                    width: width * .01,
                  ),
                  const Text(
                    'Sign in with the facebook',
                    style: TextStyle(color: Color(0xffFFFFFF), fontSize: 13),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            SizedBox(
              height: height * .06,
              width: width * .80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset('assets/search.png'),
                  ),
                  SizedBox(
                    width: width * .04,
                  ),
                  const Text(
                    'Sign in with the google',
                    style: TextStyle(color: Color(0xffFFFFFF), fontSize: 13),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * .03,
            ),
            InkWell(
                onTap: () {
                  // Navigator.pushNamed(context, Pages.FORGOTPASSWORD_PAGE);
                },
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                      color: ColorsClass.semiBoldWeightColor, fontSize: 15),
                )),
            SizedBox(
              height: height * .05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't Have an account?",
                  style: TextStyle(
                      color: ColorsClass.semiBoldWeightColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: width * .02,
                ),
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Pages.SIGNUP_PAGE);
                    },
                    child: Text(
                      'Sing up',
                      style: TextStyle(
                          color: ColorsClass.semiBoldColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ))
              ],
            ),
            SizedBox(
              height: height * .03,
            )
          ],
        ),
      ),
    );
  }
}
