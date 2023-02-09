part of 'check_box_bloc.dart';

@immutable
abstract class CheckBoxState {}

class CheckBoxInitial extends CheckBoxState {}

// ignore: must_be_immutable
class CheckBoxVisibleState extends CheckBoxState{
  bool visible;
  CheckBoxVisibleState(this.visible);
}
