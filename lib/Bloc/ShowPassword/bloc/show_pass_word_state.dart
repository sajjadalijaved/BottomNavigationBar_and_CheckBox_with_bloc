part of 'show_pass_word_bloc.dart';

@immutable
abstract class ShowPassWordState {}

class ShowPassWordInitial extends ShowPassWordState {}

class PasswordVisibilityState extends ShowPassWordState{
  final bool obsecure;
  PasswordVisibilityState(this.obsecure);
}
