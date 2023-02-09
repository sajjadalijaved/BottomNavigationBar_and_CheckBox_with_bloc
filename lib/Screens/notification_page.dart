import 'package:botttom_bar_with_bloc/CustomColors/colors_page.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: ColorsClass.appBackGroundColor,
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(
            height: height * .05,
          ),
          Container(
            height: height * .08,
            width: width,
            color: Colors.transparent,
            child: Padding(
              padding: EdgeInsets.only(left: width * .03),
              child: Text(
                'Notifications',
                style: TextStyle(
                    color: ColorsClass.appBoldColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: height * .08,
            width: width,
            color: Colors.transparent,
            child: Row(
              children: [
                Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        // Navigator.pushNamed(context, Pages.FOLLOWREQUEST_PAGE);
                      },
                      child: Container(
                        height: height * .20,
                        width: width * .20,
                        decoration: BoxDecoration(
                            border: Border.all(color: ColorsClass.appBoldColor),
                            shape: BoxShape.circle,
                            color: ColorsClass.appBoldColor,
                            image: const DecorationImage(
                                image: AssetImage(
                                    'assets/unsplash_3TLl_97HNJo.png'))),
                      ),
                    ),
                    Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          height: height * .05,
                          width: width * .05,
                          decoration: const BoxDecoration(
                              color: Colors.red, shape: BoxShape.circle),
                        ))
                  ],
                ),
                SizedBox(
                  width: width * .03,
                ),
                Text(
                  'Follow Requests',
                  style:
                      TextStyle(color: ColorsClass.appBoldColor, fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * .05, left: width * .03),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'New',
                  style:
                      TextStyle(color: ColorsClass.appBoldColor, fontSize: 16),
                )),
          ),
          Column(children: [
            SizedBox(
              height: height * .02,
            ),
            ListTile(
              leading: Container(
                height: height * .20,
                width: width * .20,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    image: const DecorationImage(
                        image: AssetImage('assets/unsplash_3TLl_97HNJo.png'))),
              ),
              title: Text(
                'karennne liked your photo. 35m',
                style: TextStyle(
                    color: ColorsClass.semiBoldWeightColor, fontSize: 16),
              ),
              trailing: Container(
                height: height * .10,
                width: width * .15,
                decoration: const BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage('assets/Rectangle14.png'),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: height * .03,
            ),
            ListTile(
              leading: Container(
                height: height * .20,
                width: width * .20,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    image: const DecorationImage(
                        image: AssetImage('assets/unsplash_3TLl_97HNJo.png'))),
              ),
              title: Text(
                'karennne liked your photo. 35m',
                style: TextStyle(
                    color: ColorsClass.semiBoldWeightColor, fontSize: 16),
              ),
              trailing: Container(
                height: height * .10,
                width: width * .15,
                decoration: const BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage('assets/Rectangle14.png'),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: height * .03,
            ),
            ListTile(
              leading: Container(
                height: height * .20,
                width: width * .20,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    image: const DecorationImage(
                        image: AssetImage('assets/unsplash_3TLl_97HNJo.png'))),
              ),
              title: Text(
                'karennne liked your photo. 35m',
                style: TextStyle(
                    color: ColorsClass.semiBoldWeightColor, fontSize: 16),
              ),
              trailing: Container(
                height: height * .10,
                width: width * .15,
                decoration: const BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage('assets/Rectangle14.png'),
                        fit: BoxFit.cover)),
              ),
            ),
          ]),
          Padding(
            padding: EdgeInsets.only(top: height * .05, left: width * .03),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Today',
                  style:
                      TextStyle(color: ColorsClass.appBoldColor, fontSize: 16),
                )),
          ),
          Column(children: [
            SizedBox(
              height: height * .02,
            ),
            ListTile(
              leading: Container(
                height: height * .20,
                width: width * .20,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    image: const DecorationImage(
                        image: AssetImage('assets/unsplash_3TLl_97HNJo.png'))),
              ),
              title: Text(
                'karennne liked your photo. 35m',
                style: TextStyle(
                    color: ColorsClass.semiBoldWeightColor, fontSize: 16),
              ),
              trailing: Container(
                height: height * .10,
                width: width * .15,
                decoration: const BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage('assets/Rectangle14.png'),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: height * .03,
            ),
            ListTile(
              leading: Container(
                height: height * .20,
                width: width * .20,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    image: const DecorationImage(
                        image: AssetImage('assets/unsplash_3TLl_97HNJo.png'))),
              ),
              title: Text(
                'karennne liked your photo. 35m',
                style: TextStyle(
                    color: ColorsClass.semiBoldWeightColor, fontSize: 16),
              ),
              trailing: Container(
                height: height * .10,
                width: width * .15,
                decoration: const BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage('assets/Rectangle14.png'),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: height * .03,
            ),
            ListTile(
              leading: Container(
                height: height * .20,
                width: width * .20,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    image: const DecorationImage(
                        image: AssetImage('assets/unsplash_3TLl_97HNJo.png'))),
              ),
              title: Text(
                'karennne liked your photo. 35m',
                style: TextStyle(
                    color: ColorsClass.semiBoldWeightColor, fontSize: 16),
              ),
              trailing: Container(
                height: height * .10,
                width: width * .15,
                decoration: const BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage('assets/Rectangle14.png'),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: height * .03,
            ),
            ListTile(
              leading: Container(
                height: height * .20,
                width: width * .20,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    image: const DecorationImage(
                        image: AssetImage('assets/unsplash_3TLl_97HNJo.png'))),
              ),
              title: Text(
                'karennne liked your photo. 35m',
                style: TextStyle(
                    color: ColorsClass.semiBoldWeightColor, fontSize: 16),
              ),
              trailing: Container(
                height: height * .10,
                width: width * .15,
                decoration: const BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage('assets/Rectangle14.png'),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: height * .03,
            ),
            ListTile(
              leading: Container(
                height: height * .20,
                width: width * .20,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    image: const DecorationImage(
                        image: AssetImage('assets/unsplash_3TLl_97HNJo.png'))),
              ),
              title: Text(
                'karennne liked your photo. 35m',
                style: TextStyle(
                    color: ColorsClass.semiBoldWeightColor, fontSize: 16),
              ),
              trailing: Container(
                height: height * .10,
                width: width * .15,
                decoration: const BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage('assets/Rectangle14.png'),
                        fit: BoxFit.cover)),
              ),
            ),
          ]),
          Padding(
            padding: EdgeInsets.only(top: height * .05, left: width * .03),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'This Week',
                  style:
                      TextStyle(color: ColorsClass.appBoldColor, fontSize: 16),
                )),
          ),
          Column(children: [
            SizedBox(
              height: height * .02,
            ),
            ListTile(
              leading: Container(
                height: height * .20,
                width: width * .20,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    image: const DecorationImage(
                        image: AssetImage('assets/unsplash_3TLl_97HNJo.png'))),
              ),
              title: Text(
                'karennne liked your photo. 35m',
                style: TextStyle(
                    color: ColorsClass.semiBoldWeightColor, fontSize: 16),
              ),
              trailing: Container(
                height: height * .10,
                width: width * .15,
                decoration: const BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage('assets/Rectangle14.png'),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: height * .03,
            ),
            ListTile(
              leading: Container(
                height: height * .20,
                width: width * .20,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    image: const DecorationImage(
                        image: AssetImage('assets/unsplash_3TLl_97HNJo.png'))),
              ),
              title: Text(
                'karennne liked your photo. 35m',
                style: TextStyle(
                    color: ColorsClass.semiBoldWeightColor, fontSize: 16),
              ),
              trailing: Container(
                height: height * .10,
                width: width * .15,
                decoration: const BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage('assets/Rectangle14.png'),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: height * .03,
            ),
            ListTile(
              leading: Container(
                height: height * .20,
                width: width * .20,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    image: const DecorationImage(
                        image: AssetImage('assets/unsplash_3TLl_97HNJo.png'))),
              ),
              title: Text(
                'karennne liked your photo. 35m',
                style: TextStyle(
                    color: ColorsClass.semiBoldWeightColor, fontSize: 16),
              ),
              trailing: Container(
                height: height * .10,
                width: width * .15,
                decoration: const BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage('assets/Rectangle14.png'),
                        fit: BoxFit.cover)),
              ),
            ),
          ]),
          SizedBox(
            height: height * .10,
          )
        ])));
  }
}
