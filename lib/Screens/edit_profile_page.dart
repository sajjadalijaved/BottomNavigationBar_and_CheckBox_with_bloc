import 'package:botttom_bar_with_bloc/CustomColors/colors_page.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double inerHeight = height * .22;

    return Scaffold(
      backgroundColor: ColorsClass.appBackGroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorsClass.appBoldColor,
        actions: [
          Padding(
            padding: EdgeInsets.only(top: height * .03, right: width * .02),
            child: Text(
              'Edit Profile',
              style: TextStyle(color: ColorsClass.semiBoldBlacColor),
            ),
          )
        ],
        leading: Icon(
          Icons.settings,
          color: ColorsClass.semiBoldBlacColor,
        ),
      ),
      body: Column(
        children: [
          Container(
              height: height * .03,
              color: ColorsClass.appBoldColor,
              child: Center(
                child: Text(
                  'Selena Martina8621 ',
                  style: TextStyle(
                      color: ColorsClass.semiBoldBlacColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              )),
          Stack(
            children: [
              Container(
                height: height * .15,
                color: Colors.transparent,
              ),
              Container(
                height: height * .08,
                color: ColorsClass.appBoldColor,
              ),
              Positioned(
                bottom: 0,
                child: Padding(
                  padding: EdgeInsets.only(left: width * .03),
                  child: Container(
                    height: height * .18,
                    width: width * .20,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color(0xffE4CF0D), width: 2),
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
              ),
              Positioned(
                  right: 0,
                  bottom: height * .07,
                  child: Container(
                    height: height * .08,
                    color: Colors.transparent,
                    width: width * .70,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: height * .03,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width * .04),
                              child: InkWell(
                                  onTap: () {
                                    // Navigator.pushNamed(
                                    //     context, Pages.ALLPHOTO_PAGE);
                                  },
                                  child: customText(
                                      firstText: '54', secondText: 'Posts')),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: height * .03,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width * .04),
                              child: InkWell(
                                  onTap: () {
                                    // Navigator.pushNamed(
                                    //     context, Pages.FOLLOWERSPAGE);
                                  },
                                  child: customText(
                                      firstText: '834',
                                      secondText: 'Followers')),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: height * .03,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width * .04),
                              child: InkWell(
                                  onTap: () {
                                    // Navigator.pushNamed(
                                    //     context, Pages.FOLLOWING_PAGE);
                                  },
                                  child: customText(
                                      firstText: '162',
                                      secondText: 'Following')),
                            ),
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: width * .03),
                        child: Text(
                          'Selena Martina',
                          style:
                              TextStyle(color: ColorsClass.semiBoldWeightColor),
                        ),
                      )),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: width * .03),
                        child: Text(
                          'Fashion designer @justdesignus',
                          style:
                              TextStyle(color: ColorsClass.semiBoldWeightColor),
                        ),
                      )),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: width * .03),
                        child: Text(
                          'Everything is designed',
                          style:
                              TextStyle(color: ColorsClass.semiBoldWeightColor),
                        ),
                      )),
                  Container(
                    height: height * .16,
                    color: Colors.transparent,
                    child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: height * .12,
                                  width: width * .12,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    shape: BoxShape.circle,
                                    color: ColorsClass.appBackGroundColor,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: ColorsClass.semiBoldWeightColor,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                'New',
                                style: TextStyle(
                                    color: ColorsClass.semiBoldWeightColor),
                              )
                            ],
                          );
                        }
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: height * .12,
                                width: width * .12,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    shape: BoxShape.circle,
                                    color: Colors.blue,
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/unsplash_3TLl_97HNJo.png'))),
                              ),
                            ),
                            Text(
                              'Videos',
                              style: TextStyle(
                                  color: ColorsClass.semiBoldWeightColor),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                  Card(
                    elevation: 0,
                    child: Container(
                      height: height * .05,
                      color: Colors.black87,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/grid.png',
                            scale: 18,
                            color: ColorsClass.semiBoldWeightColor,
                          ),
                          Text(
                            'Photos',
                            style: TextStyle(
                                color: ColorsClass.semiBoldWeightColor,
                                fontWeight: FontWeight.bold),
                          ),
                          Image.asset(
                            'assets/play-button.png',
                            scale: 18,
                            color: ColorsClass.semiBoldWeightColor,
                          ),
                          //  SizedBox(width: width*.02,),
                          Text(
                            'Videos',
                            style: TextStyle(
                                color: ColorsClass.semiBoldWeightColor,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.perm_contact_cal_sharp,
                            color: ColorsClass.semiBoldWeightColor,
                            size: height * .04,
                          ),
                          //  SizedBox(width: width*.02,),
                          Text(
                            'All',
                            style: TextStyle(
                                color: ColorsClass.semiBoldWeightColor,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, Pages.ALLPHOTO_PAGE);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: ColorsClass.appBoldColor, width: 0),
                                image: const DecorationImage(
                                    image: AssetImage(
                                      'assets/Rectangle14.png',
                                    ),
                                    fit: BoxFit.cover)),
                          ));
                    },
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget customText({required String firstText, required String secondText}) {
    return Column(
      children: [
        Text(
          firstText,
          style: TextStyle(
              color: ColorsClass.semiBoldBlacColor,
              fontWeight: FontWeight.bold),
        ),
        Text(
          secondText,
          style: TextStyle(color: ColorsClass.semiBoldBlacColor),
        )
      ],
    );
  }
}
