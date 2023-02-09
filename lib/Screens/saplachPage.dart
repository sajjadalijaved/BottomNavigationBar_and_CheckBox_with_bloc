import 'package:botttom_bar_with_bloc/CustomColors/colors_page.dart';
import 'package:botttom_bar_with_bloc/Routes/routes.dart';
import 'package:flutter/material.dart';

class SaplashPage extends StatefulWidget {
  const SaplashPage({Key? key}) : super(key: key);

  @override
  State<SaplashPage> createState() => _SaplashPageState();
}

class _SaplashPageState extends State<SaplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.pushNamedAndRemoveUntil(
            context, Pages.SIGNIN_PAGE, (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsClass.semiBoldBlacColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/sp.png',
              scale: 2,
            ),
            Text(
              'Share that Look!',
              style: TextStyle(
                  color: ColorsClass.appBoldColor,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Lets share the world!',
                  style: TextStyle(
                      color: ColorsClass.semiBoldWeightColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Image.asset(
                  'assets/ih.png',
                  scale: 12,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
