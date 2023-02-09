import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_navigation_bar_event.dart';
part 'bottom_navigation_bar_state.dart';

class BottomNavigationBarBloc extends Bloc<BottomNavigationBarEvent, BottomNavigationBarState> {
  BottomNavigationBarBloc() : super(BottomNavigationBarInitial(currentIndex: 0)) {
    on<BottomNavigationCurrentEvent>((event, emit) {
      emit.call(BottomNavigationBarCurrentState(event.currentIndex));
    });
  }
}
