part of 'bottom_navigation_bar_bloc.dart';

@immutable
abstract class BottomNavigationBarState {}

// ignore: must_be_immutable
class BottomNavigationBarInitial extends BottomNavigationBarState {
  int currentIndex;
  BottomNavigationBarInitial({required this.currentIndex});
}

class BottomNavigationBarCurrentState extends BottomNavigationBarState{
  final int currentIndex;
  BottomNavigationBarCurrentState(this.currentIndex);
}
