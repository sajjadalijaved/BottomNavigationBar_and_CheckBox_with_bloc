import 'package:botttom_bar_with_bloc/Bloc/CheckBoxBloc/check_box_bloc.dart';
import 'package:botttom_bar_with_bloc/Bloc/ShowPassword/bloc/show_pass_word_bloc.dart';
import 'package:botttom_bar_with_bloc/CustomColors/colors_page.dart';
import 'package:botttom_bar_with_bloc/Routes/routes.dart';
import 'package:botttom_bar_with_bloc/Widgets/Custom_Button.dart';
import 'package:botttom_bar_with_bloc/Widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:provider/provider.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordontroller = TextEditingController();
  bool check = false;

  @override
  Widget build(BuildContext context) {
    CheckBoxBloc checkBoxBloc =
        Provider.of<CheckBoxBloc>(context, listen: false);
    checkBoxBloc.add(CheckBoxVisibleEvent(check));
    ShowPassWordBloc passwordFieldBloc = Provider.of(context, listen: false);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorsClass.appBackGroundColor,
      appBar: AppBar(
        backgroundColor: ColorsClass.appBackGroundColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Share that Look!',
              style: TextStyle(
                  color: ColorsClass.appBoldColor,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height * .03,
            ),
            Center(
              child: Text(
                '''
          Sign Up to see the photos and videos,
                           from your friends.
                   ''',
                style: TextStyle(
                    color: ColorsClass.semiBoldColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  Pages.EXPLORE_PAGE,
                );
              },
              child: Container(
                height: height * .06,
                width: width * .80,
                decoration: BoxDecoration(
                  color: const Color(0xff2757D2),
                  border: Border.all(color: const Color(0xffFFFFFF)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('assets/FacebookLogo1.png'),
                    ),
                    const Text(
                      'Log in with the facebook',
                      style: TextStyle(color: Color(0xffFFFFFF), fontSize: 13),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * .03,
            ),
            Container(
              height: height * .06,
              width: width * .80,
              decoration: BoxDecoration(
                color: const Color(0xffE03030),
                border: Border.all(color: const Color(0xffFFFFFF)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset('assets/search.png'),
                  ),
                  const Text(
                    'Log in with the Google',
                    style: TextStyle(color: Color(0xffFFFFFF), fontSize: 13),
                  )
                ],
              ),
            ),
            SizedBox(
              height: height * .03,
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
                      style: TextStyle(color: Color(0xffFFFFFF)))
                ],
              ),
            ),
            SizedBox(
              height: height * .06,
            ),
            customTextFormField(
                context: context,
                hintText: 'Mobile Number Or  Email',
                controller: mobileNumberController),
            SizedBox(
              height: height * .03,
            ),
            customTextFormField(
              context: context,
              hintText: 'FullName',
              controller: fullNameController,
            ),
            SizedBox(
              height: height * .03,
            ),
            customTextFormField(
                context: context,
                hintText: 'Username',
                controller: userNameController),
            SizedBox(
              height: height * .03,
            ),
            BlocBuilder<ShowPassWordBloc, ShowPassWordState>(
              builder: (context, state) {
                if (state is PasswordVisibilityState) {
                  return Padding(
                    padding:
                        EdgeInsets.only(left: width * .10, right: width * .10),
                    child: TextFormField(
                      obscureText: state.obsecure,
                      controller: passwordontroller,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          suffixIcon: InkWell(
                              onTap: () {
                                if (state.obsecure) {
                                  passwordFieldBloc
                                      .add(VisibilityCheckEvent(false));
                                } else {
                                  passwordFieldBloc
                                      .add(VisibilityCheckEvent(true));
                                }
                              },
                              child: Icon(
                                state.obsecure
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_rounded,
                              )),
                          hintStyle: const TextStyle(color: Color(0xff999191)),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          filled: true,
                          fillColor: const Color(0xffFFFFFF)),
                    ),
                  );
                } else {
                  return Padding(
                    padding:
                        EdgeInsets.only(left: width * .10, right: width * .10),
                    child: TextFormField(
                      obscureText: true,
                      controller: passwordontroller,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          suffixIcon: GestureDetector(
                            onTap: () {
                              passwordFieldBloc.add(VisibilityCheckEvent(true));
                            },
                            child: const Icon(
                              Icons.visibility_off_outlined,
                            ),
                          ),
                          hintStyle: const TextStyle(color: Color(0xff999191)),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          filled: true,
                          fillColor: const Color(0xffFFFFFF)),
                    ),
                  );
                }
              },

              // SizedBox()
            ),
            SizedBox(
              height: height * .03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<CheckBoxBloc, CheckBoxState>(
                  builder: (context, state) {
                    if (state is CheckBoxVisibleState) {
                      return Transform.scale(
                        scale: 1.5,
                        child: Checkbox(
                            checkColor: ColorsClass.appBoldColor,
                            activeColor: Colors.white,
                            side: BorderSide(
                                color: ColorsClass.appBoldColor, width: 2),
                            value: state.visible,
                            onChanged: (visible) {
                              state.visible = visible!;
                              checkBoxBloc
                                  .add(CheckBoxVisibleEvent(state.visible));
                            }),
                      );
                    }
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: height * .04,
                        width: width * .10,
                        decoration: BoxDecoration(
                            color: const Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: const Color(0xffE4CF0D), width: 2)),
                      ),
                    );
                  },
                ),
                Text(
                  'Remember Me',
                  style: TextStyle(
                      color: ColorsClass.semiBoldWeightColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: width * .10,
                  right: width * .10,
                  top: height * .03,
                  bottom: height * .0),
              child: Text(
                'People who use our service may have uploaded your contact information to Share That Look!',
                style: TextStyle(
                    color: ColorsClass.semiBoldWeightColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: width * .10),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Learn More',
                    style: TextStyle(
                        color: ColorsClass.semiBoldColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: width * .10,
                  right: width * .10,
                  top: height * .03,
                  bottom: height * .04),
              child: Text(
                'By signing up,you agree to our terms, Pricacy Police and  Cookies Policy.',
                style: TextStyle(
                    color: ColorsClass.semiBoldWeightColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            InkWell(
              onTap: () {
                   Navigator.pushNamed(
                  context,
                  Pages.EXPLORE_PAGE,);
              },
              child: customButton(
                context: context,
                text: 'Sign up',
              ),
            ),
            SizedBox(
              height: height * .06,
            ),
            const Divider(
              color: Color(0xff908C8C),
            ),
            SizedBox(
              height: height * .03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Have an account?',
                  style: TextStyle(
                      color: ColorsClass.semiBoldWeightColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: width * .02,
                ),
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Pages.SIGNIN_PAGE);
                    },
                    child: Text(
                      'Log in',
                      style: TextStyle(
                          color: ColorsClass.semiBoldColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
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
