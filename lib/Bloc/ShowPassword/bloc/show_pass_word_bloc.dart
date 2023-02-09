import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'show_pass_word_event.dart';
part 'show_pass_word_state.dart';

class ShowPassWordBloc extends Bloc<ShowPassWordEvent, ShowPassWordState> {
  ShowPassWordBloc() : super(ShowPassWordInitial()) {
    on<VisibilityCheckEvent>((event, emit) {
      emit.call(PasswordVisibilityState(event.obsecure));
     
    });
  }
}
