import 'package:botttom_bar_with_bloc/CustomColors/colors_page.dart';
import 'package:flutter/material.dart';

Widget customButton({required BuildContext context, required String text}) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return Container(
      height: height * .07,
      width: width * .80,
      decoration: BoxDecoration(
        color: const Color(0xffE4CF0D),
        border: Border.all(color: const Color(0xffFFFFFF)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: ColorsClass.semiBoldBlacColor,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ));
}
