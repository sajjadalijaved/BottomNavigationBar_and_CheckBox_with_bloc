part of 'show_pass_word_bloc.dart';

@immutable
abstract class ShowPassWordEvent {}

class VisibilityCheckEvent extends ShowPassWordEvent{
  final bool obsecure;
  VisibilityCheckEvent(this.obsecure);
}
