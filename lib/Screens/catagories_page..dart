import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:botttom_bar_with_bloc/CustomColors/colors_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class CatagroisPage extends StatelessWidget {
  const CatagroisPage({Key? key}) : super(key: key);
 

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List<String> list = ['Audio', 'Video', 'Photo', 'Video', 'Movi'];
    return Scaffold(
      backgroundColor: ColorsClass.appBackGroundColor,
      body: Column(
        children: [
          SizedBox(
            height: height * .05,
          ),
          Container(
            height: height * .07,
            width: width * .85,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: ColorsClass.appBoldColor)),
            child: TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: ColorsClass.appBoldColor,
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: ColorsClass.appBoldColor),
                  border: InputBorder.none),
            ),
          ),
          
          SizedBox(
            height: height * .03,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Container(
              color: Colors.transparent,
              child: StaggeredGrid.count(
                crossAxisCount: 6,
                mainAxisSpacing: 6,
                crossAxisSpacing: 6,
                children: [
                  StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 3,
                    child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/Rectangle19.png'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 6,
                    child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/Rectangle14.png'),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 3,
                    child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/Rectangle19.png'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/Rectangle19.png'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/Rectangle14.png'),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/Rectangle19.png'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 6,
                    mainAxisCellCount: 3,
                    child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/Rectangle19.png'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
