part of 'bottom_navigation_bar_bloc.dart';

@immutable
abstract class BottomNavigationBarEvent {}

class  BottomNavigationCurrentEvent extends BottomNavigationBarEvent{
  final int currentIndex;
  BottomNavigationCurrentEvent(this.currentIndex);
}
