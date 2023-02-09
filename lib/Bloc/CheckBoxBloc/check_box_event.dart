part of 'check_box_bloc.dart';

@immutable
abstract class CheckBoxEvent {}


// ignore: must_be_immutable
class CheckBoxVisibleEvent extends CheckBoxEvent{
  bool visible;
  CheckBoxVisibleEvent(this.visible);
}