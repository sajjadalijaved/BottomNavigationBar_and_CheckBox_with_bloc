import 'dart:ui';

import 'package:botttom_bar_with_bloc/CustomColors/colors_page.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double inerHeight = height * .22;

    return Scaffold(
      key: _key,
      drawer: const Drawer(),
      backgroundColor: ColorsClass.appBackGroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: ColorsClass.appBackGroundColor),
        backgroundColor: ColorsClass.appBackGroundColor,
        centerTitle: true,
        title: Text(
          'Share that Look!',
          style: TextStyle(color: ColorsClass.appBoldColor),
        ),
      ),
      body: Column(
        children: [
          Container(
              height: height * .08,
              width: width,
              color: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.only(left: width * .03, right: width * .03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          _key.currentState!.openDrawer();
                        },
                        child: Icon(
                          Icons.menu,
                          color: ColorsClass.appBoldColor,
                        )),
                    Text(
                      'Explore',
                      style: TextStyle(
                          color: ColorsClass.appBoldColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.notifications_active_sharp,
                      color: ColorsClass.semiBoldWeightColor,
                    ),
                  ],
                ),
              )),
          Container(
            height: height * .22,
            color: Colors.transparent,
            child: ListView.builder(
              itemCount: 7,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: width * .03),
                      child: Container(
                        height: height * .18,
                        width: width * .20,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xffE4CF0D), width: 2),
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          height: inerHeight * .70,
                          width: width * .18,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color(0xffD9D9D9), width: 2),
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                              image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/unsplash_3TLl_97HNJo.png'))),
                        ),
                      ),
                    ),
                    Text(
                      "Austin",
                      style: TextStyle(
                          color: ColorsClass.semiBoldWeightColor, fontSize: 16),
                    ),
                    const Spacer()
                  ],
                );
              },
            ),
          ),
          Expanded(
              child: Container(
            color: Colors.transparent,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: height * .40,
                    width: width,
                    decoration: BoxDecoration(
                        color: const Color(0xffE4CF0D),
                        borderRadius: BorderRadius.circular(40)),
                    child: Column(
                      children: [
                        Container(
                          height: height * .10,
                          child: Padding(
                            padding: EdgeInsets.only(left: width * .05),
                            child: Row(
                              children: [
                                Container(
                                  height: height * .15,
                                  width: width * .15,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xffE4CF0D),
                                        width: 2),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Container(
                                    height: inerHeight * .70,
                                    width: width * .18,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xffD9D9D9),
                                            width: 2),
                                        shape: BoxShape.circle,
                                        color: Colors.blue,
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                'assets/unsplash_3TLl_97HNJo.png'))),
                                  ),
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: height * .02,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        // text: 'Clalre Galen ',
                                        style:
                                            DefaultTextStyle.of(context).style,
                                        children: const <TextSpan>[
                                          TextSpan(
                                              text: 'Clalre Galen',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                    ),
                                    const Text('@ClaireGn5')
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/Rectangle14.png')),
                                      borderRadius: BorderRadius.circular(30)),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: height * .05,
                                right: height * .05,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRect(
                                      child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 10.0, sigmaY: 10.0),
                                    child: Container(
                                      width: width,
                                      height: height * .10,
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20)),
                                          color: Colors.grey.shade200
                                              .withOpacity(0.2)),
                                      child: Padding(
                                        padding:
                                            EdgeInsets.only(left: width * .02),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.favorite,
                                              color: Colors.red.shade500,
                                            ),
                                            SizedBox(
                                              width: width * .03,
                                            ),
                                            const Icon(
                                              Icons.search_outlined,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: width * .03,
                                            ),
                                            const Icon(
                                              Icons.send_rounded,
                                              color: Colors.white,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * .01,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ))
        ],
      ),
    );
  }
}
