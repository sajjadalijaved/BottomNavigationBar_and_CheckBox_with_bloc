part of 'bottom_navigation_bar_bloc.dart';

@immutable
abstract class BottomNavigationBarState {}

class BottomNavigationBarInitial extends BottomNavigationBarState {}

class BottomNavigationBarCurrentState extends BottomNavigationBarState{
  final int currentIndex;
  BottomNavigationBarCurrentState(this.currentIndex);
}
