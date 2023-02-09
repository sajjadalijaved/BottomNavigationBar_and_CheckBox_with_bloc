import 'package:botttom_bar_with_bloc/CustomColors/colors_page.dart';
import 'package:flutter/material.dart';



Widget customCard(
    {required BuildContext context,
    required String image,
    required String text}) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return Padding(
    padding: EdgeInsets.only(left: width * .07, right: width * .07),
    child: Container(
      height: height * .18,
      width: width,
      decoration: BoxDecoration(
          color: ColorsClass.appBoldColor,
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: width * .03,
          ),
          Container(
            height: height * .20,
            width: width * .20,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xffFFFFFF)),
            child: Center(
                child: Image.asset(
              image,
              scale: 20,
            )),
          ),
          Text(
            text,
            style: TextStyle(
                color: ColorsClass.semiBoldBlacColor,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: width * .03,
          ),
        ],
      ),
    ),
  );
}
