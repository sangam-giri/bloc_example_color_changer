part of 'color_changer_bloc.dart';

abstract class ColorChangerState {}

class ColorChangerInitialState extends ColorChangerState {}

class ColorChangedState extends ColorChangerState {
  Color color;
  ColorChangedState({required this.color});
}
