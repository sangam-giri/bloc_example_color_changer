import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'color_changer_event.dart';
part 'color_changer_state.dart';

class ColorChangerBloc extends Bloc<ColorChangerEvent, ColorChangerState> {
  ColorChangerBloc() : super(ColorChangerInitialState()) {
    on<ColorChangeBlueEvent>(
      (event, emit) {
        emit(ColorChangedState(color: Colors.blue));
      },
    );
    on<ColorChangeRedEvent>((event, emit) {
      emit(ColorChangedState(color: Colors.red));
    });
  }
}
