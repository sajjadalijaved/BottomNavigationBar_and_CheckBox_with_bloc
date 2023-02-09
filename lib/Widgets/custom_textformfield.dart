import 'package:flutter/material.dart';

Widget customTextFormField(
    {required BuildContext context,
    required String hintText,
    Widget? suffix,
    required TextEditingController controller,
    bool? a}) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return Padding(
    padding: EdgeInsets.only(left: width * .10, right: width * .10),
    child: TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: suffix,
          hintStyle: const TextStyle(color: Color(0xff999191)),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          filled: true,
          fillColor: const Color(0xffFFFFFF)),
    ),
  );
}
