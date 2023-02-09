import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:botttom_bar_with_bloc/Bloc/BottomNavigationBarBloc/bottom_navigation_bar_bloc.dart';
import 'package:botttom_bar_with_bloc/CustomColors/colors_page.dart';
import 'package:botttom_bar_with_bloc/Screens/catagories_page..dart';
import 'package:botttom_bar_with_bloc/Screens/edit_profile_page.dart';
import 'package:botttom_bar_with_bloc/Screens/explore_screen.dart';
import 'package:botttom_bar_with_bloc/Screens/notification_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ExplorePage extends StatelessWidget {
  ExplorePage({super.key});

  List bottomNavigationBarList = [
    ExploreScreen(),
    const CatagroisPage(),
    NotificationPage(),
    const EditProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    BottomNavigationBarBloc bottomNavigationBarBloc =
        Provider.of<BottomNavigationBarBloc>(context, listen: false);

    return BlocBuilder<BottomNavigationBarBloc, BottomNavigationBarState>(
      builder: (context, state) {
        if (state is BottomNavigationBarCurrentState) {
          return Scaffold(
            backgroundColor: ColorsClass.appBackGroundColor,
            body: bottomNavigationBarList.elementAt(state.currentIndex),
            floatingActionButton: FloatingActionButton(
              backgroundColor: const Color(0xffFFFFFF),
              onPressed: () {},
              child: const Icon(
                Icons.add,
                color: Color(0xff000000),
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: AnimatedBottomNavigationBar(
              activeColor: Colors.white,
              backgroundColor: const Color(0xffE4CF0D),
              icons: const [
                Icons.home_filled,
                Icons.search_sharp,
                Icons.message,
                Icons.person
              ],
              activeIndex: state.currentIndex,
              gapLocation: GapLocation.center,
              notchSmoothness: NotchSmoothness.softEdge,
              onTap: (index) => bottomNavigationBarBloc
                  .add(BottomNavigationCurrentEvent(index)),
            ),
          );
        } else {
          return Scaffold(
            backgroundColor: ColorsClass.appBackGroundColor,
            body: bottomNavigationBarList.elementAt(0),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: const Icon(
                Icons.add,
                color: Color(0xff000000),
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: AnimatedBottomNavigationBar(
              activeColor: Colors.white,
              backgroundColor: const Color(0xffE4CF0D),
              icons: const [
                Icons.home_filled,
                Icons.search_sharp,
                Icons.message,
                Icons.person
              ],
              activeIndex: 0,
              gapLocation: GapLocation.center,
              notchSmoothness: NotchSmoothness.softEdge,
              onTap: (index) => bottomNavigationBarBloc
                  .add(BottomNavigationCurrentEvent(index)),
            ),
          );
        }
      },
    );
  }
}
